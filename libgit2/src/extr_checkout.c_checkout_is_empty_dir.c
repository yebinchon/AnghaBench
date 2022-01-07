
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int checkout_data ;


 scalar_t__ checkout_target_fullpath (TYPE_1__**,int *,char const*) ;
 int git_path_is_empty_dir (int ) ;

__attribute__((used)) static bool checkout_is_empty_dir(checkout_data *data, const char *path)
{
 git_buf *fullpath;

 if (checkout_target_fullpath(&fullpath, data, path) < 0)
  return 0;

 return git_path_is_empty_dir(fullpath->ptr);
}
