
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osafeloader_extract (int,char**) ;
 int osafeloader_info (int,char**) ;
 int strcmp (char*,char*) ;
 int usage () ;

int main(int argc, char **argv) {
 if (argc > 1) {
  if (!strcmp(argv[1], "info"))
   return osafeloader_info(argc, argv);
  else if (!strcmp(argv[1], "extract"))
   return osafeloader_extract(argc, argv);
 }

 usage();
 return 0;
}
