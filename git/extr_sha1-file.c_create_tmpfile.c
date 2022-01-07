
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 scalar_t__ adjust_shared_perm (int ) ;
 int directory_size (char const*) ;
 scalar_t__ errno ;
 int git_mkstemp_mode (int ,int) ;
 scalar_t__ mkdir (int ,int) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int create_tmpfile(struct strbuf *tmp, const char *filename)
{
 int fd, dirlen = directory_size(filename);

 strbuf_reset(tmp);
 strbuf_add(tmp, filename, dirlen);
 strbuf_addstr(tmp, "tmp_obj_XXXXXX");
 fd = git_mkstemp_mode(tmp->buf, 0444);
 if (fd < 0 && dirlen && errno == ENOENT) {






  strbuf_reset(tmp);
  strbuf_add(tmp, filename, dirlen - 1);
  if (mkdir(tmp->buf, 0777) && errno != EEXIST)
   return -1;
  if (adjust_shared_perm(tmp->buf))
   return -1;


  strbuf_addstr(tmp, "/tmp_obj_XXXXXX");
  fd = git_mkstemp_mode(tmp->buf, 0444);
 }
 return fd;
}
