
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int error (char*,char const*) ;

__attribute__((used)) static int ut_003error(int argc, const char **argv)
{
 int k;

 if (!argv[0] || !*argv[0])
  die("expect <error_message>");

 for (k = 0; k < argc; k++)
  error("%s", argv[k]);

 return 0;
}
