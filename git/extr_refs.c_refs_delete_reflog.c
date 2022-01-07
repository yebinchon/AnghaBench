
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* delete_reflog ) (struct ref_store*,char const*) ;} ;


 int stub1 (struct ref_store*,char const*) ;

int refs_delete_reflog(struct ref_store *refs, const char *refname)
{
 return refs->be->delete_reflog(refs, refname);
}
