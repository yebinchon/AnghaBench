
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int reuseaddr ;
typedef int quicly_stream_t ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_2__ quicly_stream_open_t ;
typedef int quicly_conn_t ;
struct TYPE_13__ {int super; } ;
typedef TYPE_3__ ptls_openssl_sign_certificate_t ;
struct TYPE_11__ {scalar_t__ count; } ;
struct TYPE_14__ {int * sign_certificate; TYPE_1__ certificates; int cipher_suites; int key_exchanges; int * get_time; int random_bytes; } ;
typedef TYPE_4__ ptls_context_t ;
typedef int local ;
struct TYPE_15__ {TYPE_2__* stream_open; TYPE_4__* tls; } ;
typedef int FILE ;
typedef int EVP_PKEY ;


 int AF_INET ;
 int EVP_PKEY_free (int *) ;
 int * PEM_read_PrivateKey (int *,int *,int *,int *) ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 TYPE_5__ ctx ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 scalar_t__ is_server () ;
 int memset (struct sockaddr_in*,int ,int) ;
 int next_cid ;
 int on_stream_open ;
 char* optarg ;
 scalar_t__ optind ;
 int perror (char*) ;
 int ptls_get_time ;
 int ptls_iovec_init (int *,int ) ;
 int ptls_load_certificates (TYPE_4__*,char*) ;
 int ptls_openssl_cipher_suites ;
 int ptls_openssl_init_sign_certificate (TYPE_3__*,int *) ;
 int ptls_openssl_key_exchanges ;
 int ptls_openssl_random_bytes ;
 int quicly_amend_ptls_context (TYPE_4__*) ;
 int quicly_connect (int **,TYPE_5__*,char*,int *,struct sockaddr*,int *,int ,int *,int *) ;
 int quicly_open_stream (int *,int **,int ) ;
 TYPE_5__ quicly_spec_context ;
 scalar_t__ resolve_address (struct sockaddr*,int*,char*,char*,int ,int ,int ) ;
 int run_loop (int,int *) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int usage (char*) ;

int main(int argc, char **argv)
{
    ptls_openssl_sign_certificate_t sign_certificate;
    ptls_context_t tlsctx = {
        .random_bytes = ptls_openssl_random_bytes,
        .get_time = &ptls_get_time,
        .key_exchanges = ptls_openssl_key_exchanges,
        .cipher_suites = ptls_openssl_cipher_suites,
    };
    quicly_stream_open_t stream_open = {on_stream_open};
    char *host = "127.0.0.1", *port = "4433";
    struct sockaddr_storage sa;
    socklen_t salen;
    int ch, fd;


    ctx = quicly_spec_context;
    ctx.tls = &tlsctx;
    quicly_amend_ptls_context(ctx.tls);
    ctx.stream_open = &stream_open;


    while ((ch = getopt(argc, argv, "c:k:p:h")) != -1) {
        switch (ch) {
        case 'c': {
            int ret;
            if ((ret = ptls_load_certificates(&tlsctx, optarg)) != 0) {
                fprintf(stderr, "failed to load certificates from file %s:%d\n", optarg, ret);
                exit(1);
            }
        } break;
        case 'k': {
            FILE *fp;
            if ((fp = fopen(optarg, "r")) == ((void*)0)) {
                fprintf(stderr, "failed to open file:%s:%s\n", optarg, strerror(errno));
                exit(1);
            }
            EVP_PKEY *pkey = PEM_read_PrivateKey(fp, ((void*)0), ((void*)0), ((void*)0));
            fclose(fp);
            if (pkey == ((void*)0)) {
                fprintf(stderr, "failed to load private key from file:%s\n", optarg);
                exit(1);
            }
            ptls_openssl_init_sign_certificate(&sign_certificate, pkey);
            EVP_PKEY_free(pkey);
            tlsctx.sign_certificate = &sign_certificate.super;
        } break;
        case 'p':
            port = optarg;
            break;
        case 'h':
            usage(argv[0]);
            break;
        default:
            exit(1);
            break;
        }
    }
    if ((tlsctx.certificates.count != 0) != (tlsctx.sign_certificate != ((void*)0))) {
        fprintf(stderr, "-c and -k options must be used together\n");
        exit(1);
    }
    argc -= optind;
    argv += optind;
    if (argc != 0)
        host = *argv++;
    if (resolve_address((struct sockaddr *)&sa, &salen, host, port, AF_INET, SOCK_DGRAM, 0) != 0)
        exit(1);


    if ((fd = socket(sa.ss_family, SOCK_DGRAM, 0)) == -1) {
        perror("socket(2) failed");
        exit(1);
    }

    if (is_server()) {
        int reuseaddr = 1;
        setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr, sizeof(reuseaddr));
        if (bind(fd, (struct sockaddr *)&sa, salen) != 0) {
            perror("bind(2) failed");
            exit(1);
        }
    } else {
        struct sockaddr_in local;
        memset(&local, 0, sizeof(local));
        if (bind(fd, (struct sockaddr *)&local, sizeof(local)) != 0) {
            perror("bind(2) failed");
            exit(1);
        }
    }

    quicly_conn_t *client = ((void*)0);
    if (!is_server()) {

        int ret;
        if ((ret = quicly_connect(&client, &ctx, host, ((void*)0), (struct sockaddr *)&sa, &next_cid, ptls_iovec_init(((void*)0), 0), ((void*)0),
                                  ((void*)0))) != 0) {
            fprintf(stderr, "quicly_connect failed:%d\n", ret);
            exit(1);
        }
        quicly_stream_t *stream;
        quicly_open_stream(client, &stream, 0);
    }


    return run_loop(fd, client);
}
