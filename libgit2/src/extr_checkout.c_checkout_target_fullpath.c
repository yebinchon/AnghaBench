
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_buf ;
struct TYPE_3__ {int target_path; int target_len; } ;
typedef TYPE_1__ checkout_data ;


 scalar_t__ git_buf_puts (int *,char const*) ;
 int git_buf_truncate (int *,int ) ;

__attribute__((used)) static int checkout_target_fullpath(
 git_buf **out, checkout_data *data, const char *path)
{
 git_buf_truncate(&data->target_path, data->target_len);

 if (path && git_buf_puts(&data->target_path, path) < 0)
  return -1;

 *out = &data->target_path;

 return 0;
}
