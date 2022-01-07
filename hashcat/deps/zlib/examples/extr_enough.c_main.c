
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tab {int dummy; } ;
typedef int code_t ;
typedef scalar_t__ big_t ;


 int atoi (char*) ;
 void* calloc (size_t,int) ;
 int cleanup () ;
 int * code ;
 scalar_t__ count (int,int,int) ;
 int * done ;
 int enough (int) ;
 int fprintf (int ,char*,int,int) ;
 int fputs (char*,int ) ;
 int max ;
 int * num ;
 int printf (char*,int,...) ;
 int puts (char*) ;
 int root ;
 size_t size ;
 int stderr ;

int main(int argc, char **argv)
{
    int syms;
    int n;
    big_t got;
    big_t sum;
    code_t word;


    code = ((void*)0);
    num = ((void*)0);
    done = ((void*)0);


    syms = 286;
    root = 9;
    max = 15;
    if (argc > 1) {
        syms = atoi(argv[1]);
        if (argc > 2) {
            root = atoi(argv[2]);
            if (argc > 3)
                max = atoi(argv[3]);
        }
    }
    if (argc > 4 || syms < 2 || root < 1 || max < 1) {
        fputs("invalid arguments, need: [sym >= 2 [root >= 1 [max >= 1]]]\n",
              stderr);
        return 1;
    }


    if (max > syms - 1)
        max = syms - 1;


    for (n = 0, word = 1; word; n++, word <<= 1)
        ;


    if (max > n || (code_t)(syms - 2) >= (((code_t)0 - 1) >> (max - 1))) {
        fputs("abort: code length too long for internal types\n", stderr);
        return 1;
    }


    if ((code_t)(syms - 1) > ((code_t)1 << max) - 1) {
        fprintf(stderr, "%d symbols cannot be coded in %d bits\n",
                syms, max);
        return 1;
    }


    code = calloc(max + 1, sizeof(int));
    if (code == ((void*)0)) {
        fputs("abort: unable to allocate enough memory\n", stderr);
        return 1;
    }



    if (syms == 2)
        num = ((void*)0);
    else {
        size = syms >> 1;
        if (size > ((size_t)0 - 1) / (n = (syms - 1) >> 1) ||
                (size *= n, size > ((size_t)0 - 1) / (n = max - 1)) ||
                (size *= n, size > ((size_t)0 - 1) / sizeof(big_t)) ||
                (num = calloc(size, sizeof(big_t))) == ((void*)0)) {
            fputs("abort: unable to allocate enough memory\n", stderr);
            cleanup();
            return 1;
        }
    }


    sum = 0;
    for (n = 2; n <= syms; n++) {
        got = count(n, 1, 2);
        sum += got;
        if (got == (big_t)0 - 1 || sum < got) {
            fputs("abort: can't count that high!\n", stderr);
            cleanup();
            return 1;
        }
        printf("%llu %d-codes\n", got, n);
    }
    printf("%llu total codes for 2 to %d symbols", sum, syms);
    if (max < syms - 1)
        printf(" (%d-bit length limit)\n", max);
    else
        puts(" (no length limit)");


    if (syms == 2)
        done = ((void*)0);
    else if (size > ((size_t)0 - 1) / sizeof(struct tab) ||
             (done = calloc(size, sizeof(struct tab))) == ((void*)0)) {
        fputs("abort: unable to allocate enough memory\n", stderr);
        cleanup();
        return 1;
    }


    if (root > max)
        root = max;
    if ((code_t)syms < ((code_t)1 << (root + 1)))
        enough(syms);
    else
        puts("cannot handle minimum code lengths > root");


    cleanup();
    return 0;
}
