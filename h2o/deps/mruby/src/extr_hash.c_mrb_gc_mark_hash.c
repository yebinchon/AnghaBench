
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RHash {int ht; } ;
typedef int mrb_state ;


 int hash_mark_i ;
 int ht_foreach (int *,int ,int ,int *) ;

void
mrb_gc_mark_hash(mrb_state *mrb, struct RHash *hash)
{
  ht_foreach(mrb, hash->ht, hash_mark_i, ((void*)0));
}
