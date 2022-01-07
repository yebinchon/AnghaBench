
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int type; } ;




 int expr_eliminate_dups1 (int,struct expr**,struct expr**) ;
 struct expr* expr_eliminate_yn (struct expr*) ;
 int trans_count ;

struct expr *expr_eliminate_dups(struct expr *e)
{
 int oldcount;
 if (!e)
  return e;

 oldcount = trans_count;
 while (1) {
  trans_count = 0;
  switch (e->type) {
  case 128: case 129:
   expr_eliminate_dups1(e->type, &e, &e);
  default:
   ;
  }
  if (!trans_count)
   break;
  e = expr_eliminate_yn(e);
 }
 trans_count = oldcount;
 return e;
}
