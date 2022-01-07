
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef int reflog_expiry_should_prune_fn ;
typedef int reflog_expiry_prepare_fn ;
typedef int reflog_expiry_cleanup_fn ;


 int get_main_ref_store (int ) ;
 int refs_reflog_expire (int ,char const*,struct object_id const*,unsigned int,int ,int ,int ,void*) ;
 int the_repository ;

int reflog_expire(const char *refname, const struct object_id *oid,
    unsigned int flags,
    reflog_expiry_prepare_fn prepare_fn,
    reflog_expiry_should_prune_fn should_prune_fn,
    reflog_expiry_cleanup_fn cleanup_fn,
    void *policy_cb_data)
{
 return refs_reflog_expire(get_main_ref_store(the_repository),
      refname, oid, flags,
      prepare_fn, should_prune_fn,
      cleanup_fn, policy_cb_data);
}
