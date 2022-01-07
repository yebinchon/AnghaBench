
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_update_strategy {int type; int command; } ;
struct strbuf {int dummy; } ;
 struct strbuf STRBUF_INIT ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 char const* strbuf_detach (struct strbuf*,int *) ;

const char *submodule_strategy_to_string(const struct submodule_update_strategy *s)
{
 struct strbuf sb = STRBUF_INIT;
 switch (s->type) {
 case 133:
  return "checkout";
 case 131:
  return "merge";
 case 129:
  return "rebase";
 case 130:
  return "none";
 case 128:
  return ((void*)0);
 case 132:
  strbuf_addf(&sb, "!%s", s->command);
  return strbuf_detach(&sb, ((void*)0));
 }
 return ((void*)0);
}
