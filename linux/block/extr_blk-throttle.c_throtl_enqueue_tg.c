
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int flags; } ;


 int THROTL_TG_PENDING ;
 int __throtl_enqueue_tg (struct throtl_grp*) ;

__attribute__((used)) static void throtl_enqueue_tg(struct throtl_grp *tg)
{
 if (!(tg->flags & THROTL_TG_PENDING))
  __throtl_enqueue_tg(tg);
}
