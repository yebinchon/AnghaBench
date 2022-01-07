
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum action_on_err { ____Placeholder_action_on_err } action_on_err ;


 int get_main_ref_store (int ) ;
 int refs_update_ref (int ,char const*,char const*,struct object_id const*,struct object_id const*,unsigned int,int) ;
 int the_repository ;

int update_ref(const char *msg, const char *refname,
        const struct object_id *new_oid,
        const struct object_id *old_oid,
        unsigned int flags, enum action_on_err onerr)
{
 return refs_update_ref(get_main_ref_store(the_repository), msg, refname, new_oid,
          old_oid, flags, onerr);
}
