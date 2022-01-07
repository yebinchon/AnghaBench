
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dir; int file; } ;
typedef TYPE_1__ object_data ;


 scalar_t__ ENOTEMPTY ;
 int cl_assert (int) ;
 int cl_git_pass (int) ;
 scalar_t__ errno ;
 int odb_dir ;
 int p_rmdir (int ) ;
 int p_unlink (int ) ;

__attribute__((used)) static void remove_object_files(object_data *d)
{
   cl_git_pass(p_unlink(d->file));
   cl_git_pass(p_rmdir(d->dir));
   cl_assert(errno != ENOTEMPTY);
   cl_git_pass(p_rmdir(odb_dir) < 0);
}
