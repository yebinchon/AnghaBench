
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; } ;
struct credential {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int credential_describe (struct credential*,struct strbuf*) ;
 char* git_prompt (int ,int) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *credential_ask_one(const char *what, struct credential *c,
    int flags)
{
 struct strbuf desc = STRBUF_INIT;
 struct strbuf prompt = STRBUF_INIT;
 char *r;

 credential_describe(c, &desc);
 if (desc.len)
  strbuf_addf(&prompt, "%s for '%s': ", what, desc.buf);
 else
  strbuf_addf(&prompt, "%s: ", what);

 r = git_prompt(prompt.buf, flags);

 strbuf_release(&desc);
 strbuf_release(&prompt);
 return xstrdup(r);
}
