
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int* buf; } ;


 struct strbuf STRBUF_INIT ;
 int git_user_agent () ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_trim (struct strbuf*) ;

const char *git_user_agent_sanitized(void)
{
 static const char *agent = ((void*)0);

 if (!agent) {
  struct strbuf buf = STRBUF_INIT;
  int i;

  strbuf_addstr(&buf, git_user_agent());
  strbuf_trim(&buf);
  for (i = 0; i < buf.len; i++) {
   if (buf.buf[i] <= 32 || buf.buf[i] >= 127)
    buf.buf[i] = '.';
  }
  agent = buf.buf;
 }

 return agent;
}
