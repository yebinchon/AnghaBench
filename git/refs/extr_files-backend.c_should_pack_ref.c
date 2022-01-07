
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 unsigned int PACK_REFS_ALL ;
 unsigned int REF_ISSYMREF ;
 scalar_t__ REF_TYPE_NORMAL ;
 int ref_resolves_to_object (char const*,struct object_id const*,unsigned int) ;
 scalar_t__ ref_type (char const*) ;
 int starts_with (char const*,char*) ;

__attribute__((used)) static int should_pack_ref(const char *refname,
      const struct object_id *oid, unsigned int ref_flags,
      unsigned int pack_flags)
{

 if (ref_type(refname) != REF_TYPE_NORMAL)
  return 0;


 if (!(pack_flags & PACK_REFS_ALL) && !starts_with(refname, "refs/tags/"))
  return 0;


 if (ref_flags & REF_ISSYMREF)
  return 0;


 if (!ref_resolves_to_object(refname, oid, ref_flags))
  return 0;

 return 1;
}
