
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct object_id {int dummy; } ;
typedef int reflog_expiry_should_prune_fn ;
typedef int reflog_expiry_prepare_fn ;
typedef int reflog_expiry_cleanup_fn ;
struct TYPE_2__ {int (* reflog_expire ) (struct ref_store*,char const*,struct object_id const*,unsigned int,int ,int ,int ,void*) ;} ;


 int stub1 (struct ref_store*,char const*,struct object_id const*,unsigned int,int ,int ,int ,void*) ;

int refs_reflog_expire(struct ref_store *refs,
         const char *refname, const struct object_id *oid,
         unsigned int flags,
         reflog_expiry_prepare_fn prepare_fn,
         reflog_expiry_should_prune_fn should_prune_fn,
         reflog_expiry_cleanup_fn cleanup_fn,
         void *policy_cb_data)
{
 return refs->be->reflog_expire(refs, refname, oid, flags,
           prepare_fn, should_prune_fn,
           cleanup_fn, policy_cb_data);
}
