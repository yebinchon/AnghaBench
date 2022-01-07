
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int kprintf (char*,int *) ;
 scalar_t__ lstat (int *,struct stat*) ;
 int * source_dirname ;

__attribute__((used)) static int check_source_dirname (void) {
  if (source_dirname == ((void*)0)) {
    return -1;
  }
  struct stat st;
  if (lstat (source_dirname, &st) < 0) {
    kprintf ("lstat for path '%s' failed. %m\n", source_dirname);
    return -1;
  }
  if (!S_ISDIR (st.st_mode)) {
    kprintf ("'%s' isn't directory.\n", source_dirname);
    return -1;
  }
  return 0;
}
