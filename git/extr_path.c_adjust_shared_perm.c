
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FORCE_DIR_SET_GID ;
 int S_IFMT ;
 scalar_t__ S_ISDIR (int) ;
 int calc_shared_perm (int) ;
 scalar_t__ chmod (char const*,int) ;
 int get_shared_repository () ;
 scalar_t__ get_st_mode_bits (char const*,int*) ;

int adjust_shared_perm(const char *path)
{
 int old_mode, new_mode;

 if (!get_shared_repository())
  return 0;
 if (get_st_mode_bits(path, &old_mode) < 0)
  return -1;

 new_mode = calc_shared_perm(old_mode);
 if (S_ISDIR(old_mode)) {

  new_mode |= (new_mode & 0444) >> 2;
  new_mode |= FORCE_DIR_SET_GID;
 }

 if (((old_mode ^ new_mode) & ~S_IFMT) &&
   chmod(path, (new_mode & ~S_IFMT)) < 0)
  return -2;
 return 0;
}
