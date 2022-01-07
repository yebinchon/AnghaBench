
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pretty ;
 int scripted () ;
 int strcmp (char const*,char*) ;
 int unit_tests () ;

int cmd__json_writer(int argc, const char **argv)
{
 argc--;
 argv++;

 if (argc > 0 && argv[0][0] == '-') {
  if (!strcmp(argv[0], "-u") || !strcmp(argv[0], "--unit"))
   return unit_tests();

  if (!strcmp(argv[0], "-p") || !strcmp(argv[0], "--pretty"))
   pretty = 1;
 }

 return scripted();
}
