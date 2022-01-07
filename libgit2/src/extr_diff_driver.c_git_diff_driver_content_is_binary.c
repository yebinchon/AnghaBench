
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_driver ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_FILTER_BYTES_TO_CHECK_NUL ;
 int GIT_UNUSED (int *) ;
 int git_buf_attach_notowned (int *,char const*,int ) ;
 scalar_t__ git_buf_text_contains_nul (int *) ;
 int min (size_t,int ) ;

int git_diff_driver_content_is_binary(
 git_diff_driver *driver, const char *content, size_t content_len)
{
 git_buf search = GIT_BUF_INIT;

 GIT_UNUSED(driver);

 git_buf_attach_notowned(&search, content,
  min(content_len, GIT_FILTER_BYTES_TO_CHECK_NUL));







 if (git_buf_text_contains_nul(&search))
  return 1;

 return 0;
}
