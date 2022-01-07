
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object_context {int dummy; } ;
typedef enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;


 int BUG (char*) ;
 unsigned int GET_OID_FOLLOW_SYMLINKS ;
 unsigned int GET_OID_ONLY_TO_DIE ;
 int get_oid_with_context_1 (struct repository*,char const*,unsigned int,int *,struct object_id*,struct object_context*) ;

enum get_oid_result get_oid_with_context(struct repository *repo,
      const char *str,
      unsigned flags,
      struct object_id *oid,
      struct object_context *oc)
{
 if (flags & GET_OID_FOLLOW_SYMLINKS && flags & GET_OID_ONLY_TO_DIE)
  BUG("incompatible flags for get_sha1_with_context");
 return get_oid_with_context_1(repo, str, flags, ((void*)0), oid, oc);
}
