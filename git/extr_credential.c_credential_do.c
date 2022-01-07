
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct credential {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ is_absolute_path (char const*) ;
 int run_credential_helper (struct credential*,int ,int) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int credential_do(struct credential *c, const char *helper,
    const char *operation)
{
 struct strbuf cmd = STRBUF_INIT;
 int r;

 if (helper[0] == '!')
  strbuf_addstr(&cmd, helper + 1);
 else if (is_absolute_path(helper))
  strbuf_addstr(&cmd, helper);
 else
  strbuf_addf(&cmd, "git credential-%s", helper);

 strbuf_addf(&cmd, " %s", operation);
 r = run_credential_helper(c, cmd.buf, !strcmp(operation, "get"));

 strbuf_release(&cmd);
 return r;
}
