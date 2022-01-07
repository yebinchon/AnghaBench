
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 int each_ref ;
 int refs_for_each_reflog (struct ref_store*,int ,int *) ;

__attribute__((used)) static int cmd_for_each_reflog(struct ref_store *refs, const char **argv)
{
 return refs_for_each_reflog(refs, each_ref, ((void*)0));
}
