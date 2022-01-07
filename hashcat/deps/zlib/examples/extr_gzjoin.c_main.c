
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int gzcopy (int ,int,unsigned long*,unsigned long*,int ) ;
 int gzinit (unsigned long*,unsigned long*,int ) ;
 int stderr ;
 int stdout ;

int main(int argc, char **argv)
{
    unsigned long crc, tot;


    argc--;
    argv++;


    if (argc == 0) {
        fputs("gzjoin usage: gzjoin f1.gz [f2.gz [f3.gz ...]] > fjoin.gz\n",
              stderr);
        return 0;
    }


    gzinit(&crc, &tot, stdout);
    while (argc--)
        gzcopy(*argv++, argc, &crc, &tot, stdout);


    return 0;
}
