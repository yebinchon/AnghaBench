
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int get_main_ref_store (int ) ;
 int refs_delete_ref (int ,char const*,char const*,struct object_id const*,unsigned int) ;
 int the_repository ;

int delete_ref(const char *msg, const char *refname,
        const struct object_id *old_oid, unsigned int flags)
{
 return refs_delete_ref(get_main_ref_store(the_repository), msg, refname,
          old_oid, flags);
}
