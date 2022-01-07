
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oseama_entity (int,char**) ;
 int oseama_extract (int,char**) ;
 int oseama_info (int,char**) ;
 int strcmp (char*,char*) ;
 int usage () ;

int main(int argc, char **argv) {
 if (argc > 1) {
  if (!strcmp(argv[1], "info"))
   return oseama_info(argc, argv);
  else if (!strcmp(argv[1], "entity"))
   return oseama_entity(argc, argv);
  else if (!strcmp(argv[1], "extract"))
   return oseama_extract(argc, argv);
 }

 usage();
 return 0;
}
