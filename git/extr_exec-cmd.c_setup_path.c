
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 char const* _PATH_DEFPATH ;
 int add_path (struct strbuf*,char const*) ;
 char* getenv (char*) ;
 char* git_exec_path () ;
 int git_set_exec_path (char const*) ;
 int setenv (char*,int ,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

void setup_path(void)
{
 const char *exec_path = git_exec_path();
 const char *old_path = getenv("PATH");
 struct strbuf new_path = STRBUF_INIT;

 git_set_exec_path(exec_path);
 add_path(&new_path, exec_path);

 if (old_path)
  strbuf_addstr(&new_path, old_path);
 else
  strbuf_addstr(&new_path, _PATH_DEFPATH);

 setenv("PATH", new_path.buf, 1);

 strbuf_release(&new_path);
}
