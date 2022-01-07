
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_describe_format_options ;


 int GIT_DESCRIBE_FORMAT_OPTIONS_VERSION ;
 int git_describe_format_options_init (int *,int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int normalize_format_options(
 git_describe_format_options *dst,
 const git_describe_format_options *src)
{
 if (!src) {
  git_describe_format_options_init(dst, GIT_DESCRIBE_FORMAT_OPTIONS_VERSION);
  return 0;
 }

 memcpy(dst, src, sizeof(git_describe_format_options));
 return 0;
}
