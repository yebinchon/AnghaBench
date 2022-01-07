
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int size; } ;
struct git_pack_file {TYPE_1__ mwf; } ;
typedef int git_off_t ;
typedef int git_mwindow ;


 unsigned char* git_mwindow_open (TYPE_1__*,int **,int,int,unsigned int*) ;
 scalar_t__ packfile_open (struct git_pack_file*) ;

__attribute__((used)) static unsigned char *pack_window_open(
  struct git_pack_file *p,
  git_mwindow **w_cursor,
  git_off_t offset,
  unsigned int *left)
{
 if (p->mwf.fd == -1 && packfile_open(p) < 0)
  return ((void*)0);
 if (offset > (p->mwf.size - 20))
  return ((void*)0);
 if (offset < 0)
  return ((void*)0);

 return git_mwindow_open(&p->mwf, w_cursor, offset, 20, left);
 }
