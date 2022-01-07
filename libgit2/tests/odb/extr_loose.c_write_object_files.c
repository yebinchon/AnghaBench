
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blen; int bytes; int file; int dir; } ;
typedef TYPE_1__ object_data ;


 scalar_t__ EEXIST ;
 int GIT_OBJECT_DIR_MODE ;
 int S_IREAD ;
 int S_IWRITE ;
 int cl_assert (int) ;
 int cl_must_pass (int ) ;
 scalar_t__ errno ;
 int p_close (int) ;
 int p_creat (int ,int) ;
 scalar_t__ p_mkdir (int ,int ) ;
 int p_write (int,int ,int ) ;

__attribute__((used)) static void write_object_files(object_data *d)
{
 int fd;

 if (p_mkdir(d->dir, GIT_OBJECT_DIR_MODE) < 0)
  cl_assert(errno == EEXIST);

 cl_assert((fd = p_creat(d->file, S_IREAD | S_IWRITE)) >= 0);
 cl_must_pass(p_write(fd, d->bytes, d->blen));

 p_close(fd);
}
