
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ putchar (int ) ;
 int stderr ;
 long strtol (char const*,int *,int ) ;

int cmd__genzeros(int argc, const char **argv)
{
 long count;

 if (argc > 2) {
  fprintf(stderr, "usage: %s [<count>]\n", argv[0]);
  return 1;
 }

 count = argc > 1 ? strtol(argv[1], ((void*)0), 0) : -1L;

 while (count < 0 || count--) {
  if (putchar(0) == EOF)
   return -1;
 }

 return 0;
}
