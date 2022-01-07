
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {scalar_t__ stacklen; int next; } ;


 scalar_t__ JV_KIND_NUMBER ;
 scalar_t__ jv_get_kind (int ) ;

__attribute__((used)) static int stream_is_top_num(struct jv_parser* p) {
  return (p->stacklen == 0 && jv_get_kind(p->next) == JV_KIND_NUMBER);
}
