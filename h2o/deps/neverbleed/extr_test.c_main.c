
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int neverbleed_t ;
typedef int SSL_CTX ;


 int NEVERBLEED_ERRBUF_SIZE ;
 int OpenSSL_add_all_algorithms () ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_use_PrivateKey_file (int *,char*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,char*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_ALL ;
 int SSL_OP_NO_COMPRESSION ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int SSLv23_server_method () ;
 int dumb_https_server (unsigned short,int *) ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ neverbleed_init (int *,char*) ;
 int neverbleed_load_private_key_file (int *,int *,char*,char*) ;
 int setup_ecc_key (int *) ;
 int sscanf (char*,char*,unsigned short*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char **argv)
{
    unsigned short port;
    SSL_CTX *ctx;
    neverbleed_t nb;
    char errbuf[NEVERBLEED_ERRBUF_SIZE];
    int use_privsep;


    SSL_load_error_strings();
    SSL_library_init();
    OpenSSL_add_all_algorithms();
    if (neverbleed_init(&nb, errbuf) != 0) {
        fprintf(stderr, "openssl_privsep_init: %s\n", errbuf);
        return 111;
    }
    ctx = SSL_CTX_new(SSLv23_server_method());
    SSL_CTX_set_options(ctx, SSL_OP_ALL | SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3 | SSL_OP_NO_COMPRESSION);
    setup_ecc_key(ctx);


    if (argc != 5) {
        fprintf(stderr, "Usage: %s <internal|privsep> <port> <certificate-chain-file> <private-key-file>\n", argv[0]);
        return 111;
    }
    if (strcmp(argv[1], "internal") == 0) {
        use_privsep = 0;
    } else if (strcmp(argv[1], "privsep") == 0) {
        use_privsep = 1;
    } else {
        fprintf(stderr, "unknown mode:%s\n", argv[1]);
        return 111;
    }
    if (sscanf(argv[2], "%hu", &port) != 1) {
        fprintf(stderr, "failed to parse port:%s\n", argv[2]);
        return 111;
    }
    if (SSL_CTX_use_certificate_chain_file(ctx, argv[3]) != 1) {
        fprintf(stderr, "failed to load certificate chain file:%s\n", argv[3]);
        return 111;
    }
    if (use_privsep) {
        if (neverbleed_load_private_key_file(&nb, ctx, argv[4], errbuf) != 1) {
            fprintf(stderr, "failed to load private key from file:%s:%s\n", argv[4], errbuf);
            return 111;
        }
    } else {
        if (SSL_CTX_use_PrivateKey_file(ctx, argv[4], SSL_FILETYPE_PEM) != 1) {
            fprintf(stderr, "failed to load private key from file:%s\n", argv[4]);
            return 111;
        }
    }


    return dumb_https_server(port, ctx);
}
