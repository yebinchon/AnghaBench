
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* REP15 (char*) ;
 char* REP16 (char*) ;
 int check_dirname (char*,char*) ;

void test_core_path__00_dirname(void)
{
 check_dirname(((void*)0), ".");
 check_dirname("", ".");
 check_dirname("a", ".");
 check_dirname("/", "/");
 check_dirname("/usr", "/");
 check_dirname("/usr/", "/");
 check_dirname("/usr/lib", "/usr");
 check_dirname("/usr/lib/", "/usr");
 check_dirname("/usr/lib//", "/usr");
 check_dirname("usr/lib", "usr");
 check_dirname("usr/lib/", "usr");
 check_dirname("usr/lib//", "usr");
 check_dirname(".git/", ".");

 check_dirname(REP16("/abc"), REP15("/abc"));
}
