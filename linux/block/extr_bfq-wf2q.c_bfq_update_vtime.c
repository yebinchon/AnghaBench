
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct bfq_service_tree {scalar_t__ vtime; } ;


 int bfq_forget_idle (struct bfq_service_tree*) ;

__attribute__((used)) static void bfq_update_vtime(struct bfq_service_tree *st, u64 new_value)
{
 if (new_value > st->vtime) {
  st->vtime = new_value;
  bfq_forget_idle(st);
 }
}
