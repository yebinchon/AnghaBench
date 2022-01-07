
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usage (char*) ;
 int xmkstemp (int ) ;
 int xstrdup (char const*) ;

int cmd__mktemp(int argc, const char **argv)
{
 if (argc != 2)
  usage("Expected 1 parameter defining the temporary file template");

 xmkstemp(xstrdup(argv[1]));

 return 0;
}
