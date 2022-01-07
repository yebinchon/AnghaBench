
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_flags; int ai_protocol; int ai_socktype; } ;
typedef int reuseaddr_flag ;
typedef int hints ;
typedef int h2o_socket_t ;
struct TYPE_2__ {int max_cwnd; int min_rtt; } ;
typedef int EC_KEY ;


 int AF_INET ;
 int AI_ADDRCONFIG ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int H2O_SOCKET_FLAG_DONT_READ ;
 int INT32_MAX ;
 int IPPROTO_TCP ;
 int NID_X9_62_prime256v1 ;
 char* OBJ_nid2sn (int) ;
 int OpenSSL_add_all_algorithms () ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOMAXCONN ;
 int SO_REUSEADDR ;
 int SSL_CTX_new (int ) ;
 int SSL_CTX_set_cipher_list (int ,char*) ;
 int SSL_CTX_set_options (int ,int) ;
 int SSL_CTX_set_tmp_ecdh (int ,int *) ;
 int SSL_CTX_use_PrivateKey_file (int ,char*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int ,char*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_ALL ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int SSLv23_client_method () ;
 int SSLv23_server_method () ;
 int UV_RUN_DEFAULT ;
 scalar_t__ bind (int,int ,int ) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int h2o_evloop_create () ;
 int h2o_evloop_run (int ,int ) ;
 int * h2o_evloop_socket_create (int ,int,int ) ;
 int * h2o_socket_connect (int ,int ,int ,int ) ;
 int h2o_socket_read_start (int *,int ) ;
 char* host ;
 TYPE_1__ latopt_cond ;
 scalar_t__ listen (int,int ) ;
 int loop ;
 int memset (struct addrinfo*,int ,int) ;
 int mode_server ;

 int on_accept ;
 int on_connect ;
 int optarg ;
 int optind ;
 char* port ;

 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int * sock ;
 int socket (int ,int ,int ) ;
 int sscanf (int ,char*,int *) ;
 int ssl_ctx ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 char* strerror (int ) ;
 int usage (char*) ;
 int uv_loop_new () ;
 int uv_run (int ,int ) ;
 int write_block_size ;

int main(int argc, char **argv)
{
    static const struct option longopts[] = {{"listen", 129, ((void*)0), 'l'},
                                             {"reverse-role", 129, ((void*)0), 'r'},
                                             {"tls", 129, ((void*)0), 't'},
                                             {"block-size", 129, ((void*)0), 'b'},
                                             {"min-rtt", 128, ((void*)0), 'R'},
                                             {"max-cwnd", 128, ((void*)0), 'c'},
                                             {}};
    int opt_ch, mode_listen = 0, mode_reverse_role = 0, mode_tls = 0;
    struct addrinfo hints, *res = ((void*)0);
    int err;

    while ((opt_ch = getopt_long(argc, argv, "lrtb:R:c:", longopts, ((void*)0))) != -1) {
        switch (opt_ch) {
        case 'l':
            mode_listen = 1;
            break;
        case 'r':
            mode_reverse_role = 1;
            break;
        case 't':
            mode_tls = 1;
            break;
        case 'b':
            if (sscanf(optarg, "%zu", &write_block_size) != 1) {
                fprintf(stderr, "write block size (-b) must be a non-negative number of octets\n");
                exit(1);
            }
            break;
        case 'R':
            if (sscanf(optarg, "%u", &latopt_cond.min_rtt) != 1) {
                fprintf(stderr, "min RTT (-m) must be a non-negative number in milliseconds\n");
                exit(1);
            }
            break;
        case 'c':
            if (sscanf(optarg, "%u", &latopt_cond.max_cwnd) != 1) {
                fprintf(stderr, "max CWND size must be a non-negative number of octets\n");
                exit(1);
            }
            break;
        default:
            usage(argv[0]);
            break;
        }
    }
    mode_server = mode_listen;
    if (mode_reverse_role)
        mode_server = !mode_server;

    if (argc == optind) {
        usage(argv[0]);
    } else {
        char *hostport = argv[optind], *colon;
        if ((colon = strchr(hostport, ':')) != ((void*)0)) {
            hostport = argv[optind];
            host = strdup(hostport);
            host[colon - hostport] = '\0';
            port = colon + 1;
        } else {
            host = "0.0.0.0";
            port = argv[optind];
        }
    }

    if (mode_tls) {
        SSL_load_error_strings();
        SSL_library_init();
        OpenSSL_add_all_algorithms();
        if (mode_server) {
            ssl_ctx = SSL_CTX_new(SSLv23_server_method());
            SSL_CTX_use_certificate_chain_file(ssl_ctx, "examples/h2o/server.crt");
            SSL_CTX_use_PrivateKey_file(ssl_ctx, "examples/h2o/server.key", SSL_FILETYPE_PEM);
        } else {
            ssl_ctx = SSL_CTX_new(SSLv23_client_method());
        }
        int nid = NID_X9_62_prime256v1;
        EC_KEY *key = EC_KEY_new_by_curve_name(nid);
        if (key == ((void*)0)) {
            fprintf(stderr, "Failed to create curve \"%s\"\n", OBJ_nid2sn(nid));
            exit(1);
        }
        SSL_CTX_set_tmp_ecdh(ssl_ctx, key);
        EC_KEY_free(key);
        SSL_CTX_set_options(ssl_ctx, SSL_OP_ALL | SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);
        SSL_CTX_set_cipher_list(ssl_ctx, "ECDHE-RSA-AES128-GCM-SHA256");
    }




    loop = h2o_evloop_create();



    memset(&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_flags = AI_ADDRCONFIG;
    if ((err = getaddrinfo(host, port, &hints, &res)) != 0) {
        fprintf(stderr, "failed to resolve %s:%s:%s\n", host, port, gai_strerror(err));
        exit(1);
    }

    if (mode_listen) {
        int fd, reuseaddr_flag = 1;
        if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == -1 ||
            setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr_flag, sizeof(reuseaddr_flag)) != 0 ||
            bind(fd, res->ai_addr, res->ai_addrlen) != 0 || listen(fd, SOMAXCONN) != 0) {
            fprintf(stderr, "failed to listen to %s:%s:%s\n", host, port, strerror(errno));
            exit(1);
        }
        h2o_socket_t *listen_sock = h2o_evloop_socket_create(loop, fd, H2O_SOCKET_FLAG_DONT_READ);
        h2o_socket_read_start(listen_sock, on_accept);
    } else {
        if ((sock = h2o_socket_connect(loop, res->ai_addr, res->ai_addrlen, on_connect)) == ((void*)0)) {
            fprintf(stderr, "failed to create socket:%s\n", strerror(errno));
            exit(1);
        }
    }

    while (1) {



        h2o_evloop_run(loop, INT32_MAX);

    }

    return 0;
}
