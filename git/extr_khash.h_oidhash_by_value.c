
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 unsigned int oidhash (struct object_id*) ;

__attribute__((used)) static inline unsigned int oidhash_by_value(struct object_id oid)
{
 return oidhash(&oid);
}
