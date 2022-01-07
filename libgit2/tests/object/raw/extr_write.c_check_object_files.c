
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; int dir; } ;
typedef TYPE_1__ object_data ;


 int cl_assert (int ) ;
 int git_path_exists (int ) ;

__attribute__((used)) static void check_object_files(object_data *d)
{
   cl_assert(git_path_exists(d->dir));
   cl_assert(git_path_exists(d->file));
}
