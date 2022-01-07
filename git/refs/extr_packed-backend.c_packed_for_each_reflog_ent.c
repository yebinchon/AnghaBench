
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
typedef int each_reflog_ent_fn ;



__attribute__((used)) static int packed_for_each_reflog_ent(struct ref_store *ref_store,
          const char *refname,
          each_reflog_ent_fn fn, void *cb_data)
{
 return 0;
}
