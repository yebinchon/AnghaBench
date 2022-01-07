
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;


 int git_user_agent_sanitized () ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static int agent_advertise(struct repository *r,
      struct strbuf *value)
{
 if (value)
  strbuf_addstr(value, git_user_agent_sanitized());
 return 1;
}
