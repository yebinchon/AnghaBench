
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* delete_refs ) (struct ref_store*,char const*,struct string_list*,unsigned int) ;} ;


 int stub1 (struct ref_store*,char const*,struct string_list*,unsigned int) ;

int refs_delete_refs(struct ref_store *refs, const char *msg,
       struct string_list *refnames, unsigned int flags)
{
 return refs->be->delete_refs(refs, msg, refnames, flags);
}
