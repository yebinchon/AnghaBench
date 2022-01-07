
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 char* getenv (char*) ;
 scalar_t__ is_executable (int ) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static char *locate_in_PATH(const char *file)
{
 const char *p = getenv("PATH");
 struct strbuf buf = STRBUF_INIT;

 if (!p || !*p)
  return ((void*)0);

 while (1) {
  const char *end = strchrnul(p, ':');

  strbuf_reset(&buf);


  if (end != p) {
   strbuf_add(&buf, p, end - p);
   strbuf_addch(&buf, '/');
  }
  strbuf_addstr(&buf, file);

  if (is_executable(buf.buf))
   return strbuf_detach(&buf, ((void*)0));

  if (!*end)
   break;
  p = end + 1;
 }

 strbuf_release(&buf);
 return ((void*)0);
}
