
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int otrx_check (int,char**) ;
 int otrx_create (int,char**) ;
 int otrx_extract (int,char**) ;
 int strcmp (char*,char*) ;
 int usage () ;

int main(int argc, char **argv) {
 if (argc > 1) {
  if (!strcmp(argv[1], "check"))
   return otrx_check(argc, argv);
  else if (!strcmp(argv[1], "create"))
   return otrx_create(argc, argv);
  else if (!strcmp(argv[1], "extract"))
   return otrx_extract(argc, argv);
 }

 usage();
 return 0;
}
