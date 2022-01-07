
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 scalar_t__ get_i (int*,char const*) ;

__attribute__((used)) static int ut_001return(int argc, const char **argv)
{
 int rc;

 if (get_i(&rc, argv[0]))
  die("expect <exit_code>");

 return rc;
}
