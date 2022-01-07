
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 scalar_t__ ENOENT ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ errno ;
 int error_errno (char*,char const*) ;
 char* git_path_todo_file () ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (int ,char) ;

__attribute__((used)) static int have_finished_the_last_pick(void)
{
 struct strbuf buf = STRBUF_INIT;
 const char *eol;
 const char *todo_path = git_path_todo_file();
 int ret = 0;

 if (strbuf_read_file(&buf, todo_path, 0) < 0) {
  if (errno == ENOENT) {
   return 0;
  } else {
   error_errno("unable to open '%s'", todo_path);
   return 0;
  }
 }

 eol = strchr(buf.buf, '\n');
 if (!eol || !eol[1])
  ret = 1;

 strbuf_release(&buf);

 return ret;
}
