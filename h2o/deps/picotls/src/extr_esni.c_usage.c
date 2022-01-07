
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void usage(const char *cmd, int status)
{
    printf("picotls-esni - generates an ESNI Resource Record\n"
           "\n"
           "Usage: %s [options]\n"
           "Options:\n"
           "  -n <published-sni>  published sni value\n"
           "  -K <key-file>       private key files (repeat the option to include multiple\n"
           "                      keys)\n"
           "  -c <cipher-suite>   aes128-gcm, chacha20-poly1305, ...\n"
           "  -d <days>           number of days until expiration (default: 90)\n"
           "  -p <padded-length>  padded length (default: 260)\n"
           "  -o <output-file>    write output to specified file instead of stdout\n"
           "                      (use on Windows as stdout is not binary there)\n"
           "  -h                  prints this help\n"
           "\n"
           "-c and -x can be used multiple times.\n"
           "\n",
           cmd);
    exit(status);
}
