
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef int FILE ;


 scalar_t__ fprintf (int *,char*,char*,...) ;
 char* oid_to_hex (struct object_id const*) ;

__attribute__((used)) static int write_packed_entry(FILE *fh, const char *refname,
         const struct object_id *oid,
         const struct object_id *peeled)
{
 if (fprintf(fh, "%s %s\n", oid_to_hex(oid), refname) < 0 ||
     (peeled && fprintf(fh, "^%s\n", oid_to_hex(peeled)) < 0))
  return -1;

 return 0;
}
