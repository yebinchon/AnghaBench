
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 char* oid_to_hex (struct object_id const*) ;
 int printf (char*,char*,char const*,int) ;

__attribute__((used)) static int each_ref(const char *refname, const struct object_id *oid,
      int flags, void *cb_data)
{
 printf("%s %s 0x%x\n", oid_to_hex(oid), refname, flags);
 return 0;
}
