
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; scalar_t__ buf; } ;


 int DB_ENVIRONMENT ;
 struct strbuf STRBUF_INIT ;
 int X_OK ;
 scalar_t__ access (scalar_t__,int ) ;
 int get_common_dir (struct strbuf*,char const*) ;
 scalar_t__ getenv (int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 scalar_t__ validate_headref (scalar_t__) ;

int is_git_directory(const char *suspect)
{
 struct strbuf path = STRBUF_INIT;
 int ret = 0;
 size_t len;


 strbuf_addstr(&path, suspect);
 strbuf_complete(&path, '/');
 strbuf_addstr(&path, "HEAD");
 if (validate_headref(path.buf))
  goto done;

 strbuf_reset(&path);
 get_common_dir(&path, suspect);
 len = path.len;


 if (getenv(DB_ENVIRONMENT)) {
  if (access(getenv(DB_ENVIRONMENT), X_OK))
   goto done;
 }
 else {
  strbuf_setlen(&path, len);
  strbuf_addstr(&path, "/objects");
  if (access(path.buf, X_OK))
   goto done;
 }

 strbuf_setlen(&path, len);
 strbuf_addstr(&path, "/refs");
 if (access(path.buf, X_OK))
  goto done;

 ret = 1;
done:
 strbuf_release(&path);
 return ret;
}
