
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* rename_ref ) (struct ref_store*,char const*,char const*,char const*) ;} ;


 int stub1 (struct ref_store*,char const*,char const*,char const*) ;

int refs_rename_ref(struct ref_store *refs, const char *oldref,
      const char *newref, const char *logmsg)
{
 return refs->be->rename_ref(refs, oldref, newref, logmsg);
}
