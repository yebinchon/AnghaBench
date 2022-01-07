
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long git_off_t ;
typedef int git_object_t ;
typedef int git_mwindow_file ;
typedef int git_mwindow ;


 int GIT_EBUFS ;
 int git_mwindow_close (int **) ;
 unsigned char* git_mwindow_open (int *,int **,unsigned long,int,unsigned int*) ;
 int packfile_error (char*) ;
 int packfile_unpack_header1 (unsigned long*,size_t*,int *,unsigned char*,unsigned int) ;

int git_packfile_unpack_header(
  size_t *size_p,
  git_object_t *type_p,
  git_mwindow_file *mwf,
  git_mwindow **w_curs,
  git_off_t *curpos)
{
 unsigned char *base;
 unsigned int left;
 unsigned long used;
 int ret;
 base = git_mwindow_open(mwf, w_curs, *curpos, 20, &left);
 if (base == ((void*)0))
  return GIT_EBUFS;

 ret = packfile_unpack_header1(&used, size_p, type_p, base, left);
 git_mwindow_close(w_curs);
 if (ret == GIT_EBUFS)
  return ret;
 else if (ret < 0)
  return packfile_error("header length is zero");

 *curpos += used;
 return 0;
}
