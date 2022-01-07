
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int assert (int) ;
 int error_invalid_local_file_uri (char const*) ;
 int git__percent_decode (int *,char const*) ;
 int git_buf_clear (int *) ;
 int local_file_url_prefixlen (char const*) ;

int git_path_fromurl(git_buf *local_path_out, const char *file_url)
{
 int offset;

 assert(local_path_out && file_url);

 if ((offset = local_file_url_prefixlen(file_url)) < 0 ||
  file_url[offset] == '\0' || file_url[offset] == '/')
  return error_invalid_local_file_uri(file_url);


 offset--;


 git_buf_clear(local_path_out);
 return git__percent_decode(local_path_out, file_url + offset);
}
