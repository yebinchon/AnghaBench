
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* create_reflog ) (struct ref_store*,char const*,int,struct strbuf*) ;} ;


 int stub1 (struct ref_store*,char const*,int,struct strbuf*) ;

int refs_create_reflog(struct ref_store *refs, const char *refname,
         int force_create, struct strbuf *err)
{
 return refs->be->create_reflog(refs, refname, force_create, err);
}
