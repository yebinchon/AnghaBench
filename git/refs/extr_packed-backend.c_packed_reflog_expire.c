
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
typedef int reflog_expiry_should_prune_fn ;
typedef int reflog_expiry_prepare_fn ;
typedef int reflog_expiry_cleanup_fn ;



__attribute__((used)) static int packed_reflog_expire(struct ref_store *ref_store,
    const char *refname, const struct object_id *oid,
    unsigned int flags,
    reflog_expiry_prepare_fn prepare_fn,
    reflog_expiry_should_prune_fn should_prune_fn,
    reflog_expiry_cleanup_fn cleanup_fn,
    void *policy_cb_data)
{
 return 0;
}
