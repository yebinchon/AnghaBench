
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int git_merge_driver_source ;
typedef int const git_merge_driver ;
typedef int git_buf ;


 int GIT_FILEMODE_BLOB ;
 int GIT_UNUSED (int const*) ;
 int git_buf_printf (int *,char*,char const*) ;

__attribute__((used)) static int test_driver_apply(
 git_merge_driver *s,
 const char **path_out,
 uint32_t *mode_out,
 git_buf *merged_out,
 const char *filter_name,
 const git_merge_driver_source *src)
{
 GIT_UNUSED(s);
 GIT_UNUSED(src);

 *path_out = "applied.txt";
 *mode_out = GIT_FILEMODE_BLOB;

 return git_buf_printf(merged_out, "This is the `%s` driver.\n",
  filter_name);
}
