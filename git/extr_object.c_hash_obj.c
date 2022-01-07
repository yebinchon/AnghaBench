
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 unsigned int oidhash (struct object_id const*) ;

__attribute__((used)) static unsigned int hash_obj(const struct object_id *oid, unsigned int n)
{
 return oidhash(oid) & (n - 1);
}
