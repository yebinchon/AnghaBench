
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void usage(const char *cmd)
{
    printf("Usage: %s [options] [input-file [output-file]]\n"
           "Options:\n"
           "  -a         simulate ACK (encoder only)\n"
           "  -b [max]   maximum number of blocked streams\n"
           "  -d         decode (default is encode)\n"
           "  -r         handling series of responses (default is requests)\n"
           "  -s [bits]  header table size bits (default is 12; i.e. 4096 bytes)\n"
           "\n",
           cmd);
    exit(0);
}
