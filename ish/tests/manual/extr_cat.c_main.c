
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fgetc (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*) ;
 int perror (char const*) ;
 int putchar (int) ;
 int stderr ;
 int * stdin ;

int main(int argc, const char *argv[]) {
    FILE *f = stdin;
    if (argc > 1)
        f = fopen(argv[1], "r");
    if (f == ((void*)0)) {
        fprintf(stderr, "cat: ");
        perror(argv[1]);
        return 1;
    }

    int c;
    while ((c = fgetc(f)) != EOF)
        putchar(c);
}
