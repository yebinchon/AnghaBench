
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_context {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct spu_context* i_ctx; } ;
struct TYPE_3__ {int files; } ;


 TYPE_2__* SPUFS_I (int ) ;
 TYPE_1__* current ;
 struct file* fcheck (int) ;
 int file_inode (struct file*) ;
 int iterate_fd (int ,int,int ,int *) ;
 int match_context ;

__attribute__((used)) static struct spu_context *coredump_next_context(int *fd)
{
 struct file *file;
 int n = iterate_fd(current->files, *fd, match_context, ((void*)0));
 if (!n)
  return ((void*)0);
 *fd = n - 1;
 file = fcheck(*fd);
 return SPUFS_I(file_inode(file))->i_ctx;
}
