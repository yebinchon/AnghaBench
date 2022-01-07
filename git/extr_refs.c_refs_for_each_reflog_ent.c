
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
typedef int each_reflog_ent_fn ;
struct TYPE_2__ {int (* for_each_reflog_ent ) (struct ref_store*,char const*,int ,void*) ;} ;


 int stub1 (struct ref_store*,char const*,int ,void*) ;

int refs_for_each_reflog_ent(struct ref_store *refs, const char *refname,
        each_reflog_ent_fn fn, void *cb_data)
{
 return refs->be->for_each_reflog_ent(refs, refname, fn, cb_data);
}
