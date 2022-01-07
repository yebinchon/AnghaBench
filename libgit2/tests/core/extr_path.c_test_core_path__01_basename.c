
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* REP1024 (char*) ;
 char* REP16 (char*) ;
 int check_basename (char*,char*) ;

void test_core_path__01_basename(void)
{
 check_basename(((void*)0), ".");
 check_basename("", ".");
 check_basename("a", "a");
 check_basename("/", "/");
 check_basename("/usr", "usr");
 check_basename("/usr/", "usr");
 check_basename("/usr/lib", "lib");
 check_basename("/usr/lib//", "lib");
 check_basename("usr/lib", "lib");

 check_basename(REP16("/abc"), "abc");
 check_basename(REP1024("/abc"), "abc");
}
