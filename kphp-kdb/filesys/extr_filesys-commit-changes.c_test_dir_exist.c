
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int exit (int) ;
 int kprintf (char*,char const* const) ;
 scalar_t__ stat (char const* const,struct stat*) ;

__attribute__((used)) static void test_dir_exist (const char *const path) {
  struct stat buf;
  if (stat (path, &buf) || !S_ISDIR (buf.st_mode)) {
    kprintf ("Directory %s doesn't exist\n", path);
    exit (1);
  }
}
