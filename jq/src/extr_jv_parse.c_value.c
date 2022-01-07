
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int flags; scalar_t__ last_seen; scalar_t__ stacklen; int next; } ;
typedef char* pfunc ;
typedef int jv ;


 scalar_t__ JV_LAST_NONE ;
 scalar_t__ JV_LAST_VALUE ;
 int JV_PARSE_STREAMING ;
 int jv_free (int ) ;
 scalar_t__ jv_is_valid (int ) ;

__attribute__((used)) static pfunc value(struct jv_parser* p, jv val) {
  if ((p->flags & JV_PARSE_STREAMING)) {
    if (jv_is_valid(p->next) || p->last_seen == JV_LAST_VALUE) {
      jv_free(val);
      return "Expected separator between values";
    }
    if (p->stacklen > 0)
      p->last_seen = JV_LAST_VALUE;
    else
      p->last_seen = JV_LAST_NONE;
  } else {
    if (jv_is_valid(p->next)) {
      jv_free(val);
      return "Expected separator between values";
    }
  }
  jv_free(p->next);
  p->next = val;
  return 0;
}
