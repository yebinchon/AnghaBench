
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int flags; } ;


 struct jv_parser* jv_mem_alloc (int) ;
 int parser_init (struct jv_parser*,int) ;

struct jv_parser* jv_parser_new(int flags) {
  struct jv_parser* p = jv_mem_alloc(sizeof(struct jv_parser));
  parser_init(p, flags);
  p->flags = flags;
  return p;
}
