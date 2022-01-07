
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int git_mkstemp_mode (int ,int) ;
 int git_path_buf (struct strbuf*,char*,char const*) ;
 int safe_create_leading_directories (int ) ;
 int xmkstemp_mode (int ,int) ;

int odb_mkstemp(struct strbuf *temp_filename, const char *pattern)
{
 int fd;




 int mode = 0444;
 git_path_buf(temp_filename, "objects/%s", pattern);
 fd = git_mkstemp_mode(temp_filename->buf, mode);
 if (0 <= fd)
  return fd;



 git_path_buf(temp_filename, "objects/%s", pattern);
 safe_create_leading_directories(temp_filename->buf);
 return xmkstemp_mode(temp_filename->buf, mode);
}
