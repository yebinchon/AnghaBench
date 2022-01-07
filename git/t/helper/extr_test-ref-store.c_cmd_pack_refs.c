
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 unsigned int arg_flags (int ,char*) ;
 int refs_pack_refs (struct ref_store*,unsigned int) ;

__attribute__((used)) static int cmd_pack_refs(struct ref_store *refs, const char **argv)
{
 unsigned int flags = arg_flags(*argv++, "flags");

 return refs_pack_refs(refs, flags);
}
