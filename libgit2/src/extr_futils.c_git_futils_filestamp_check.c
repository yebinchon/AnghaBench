
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; scalar_t__ st_mtime_nsec; scalar_t__ st_ino; scalar_t__ st_size; } ;
typedef scalar_t__ git_off_t ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {scalar_t__ size; unsigned int ino; TYPE_1__ mtime; } ;
typedef TYPE_2__ git_futils_filestamp ;


 int GIT_ENOTFOUND ;
 scalar_t__ p_stat (char const*,struct stat*) ;

int git_futils_filestamp_check(
 git_futils_filestamp *stamp, const char *path)
{
 struct stat st;


 if (stamp == ((void*)0))
  return 1;

 if (p_stat(path, &st) < 0)
  return GIT_ENOTFOUND;

 if (stamp->mtime.tv_sec == st.st_mtime &&



  stamp->size == (git_off_t)st.st_size &&
  stamp->ino == (unsigned int)st.st_ino)
  return 0;

 stamp->mtime.tv_sec = st.st_mtime;



 stamp->size = (git_off_t)st.st_size;
 stamp->ino = (unsigned int)st.st_ino;

 return 1;
}
