
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 unsigned int REF_ISBROKEN ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int has_object_file (struct object_id const*) ;

int ref_resolves_to_object(const char *refname,
      const struct object_id *oid,
      unsigned int flags)
{
 if (flags & REF_ISBROKEN)
  return 0;
 if (!has_object_file(oid)) {
  error(_("%s does not point to a valid object!"), refname);
  return 0;
 }
 return 1;
}
