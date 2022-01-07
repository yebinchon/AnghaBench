
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* create_symref ) (struct ref_store*,char const*,char const*,char const*) ;} ;


 int stub1 (struct ref_store*,char const*,char const*,char const*) ;

int refs_create_symref(struct ref_store *refs,
         const char *ref_target,
         const char *refs_heads_master,
         const char *logmsg)
{
 return refs->be->create_symref(refs, ref_target,
           refs_heads_master,
           logmsg);
}
