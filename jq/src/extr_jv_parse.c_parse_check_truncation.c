
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int flags; scalar_t__ stackpos; scalar_t__ tokenpos; int next; int last_ch_was_ws; } ;


 scalar_t__ JV_KIND_NUMBER ;
 int JV_PARSE_SEQ ;
 scalar_t__ jv_get_kind (int ) ;

__attribute__((used)) static int parse_check_truncation(struct jv_parser* p) {
  return ((p->flags & JV_PARSE_SEQ) && !p->last_ch_was_ws && (p->stackpos > 0 || p->tokenpos > 0 || jv_get_kind(p->next) == JV_KIND_NUMBER));
}
