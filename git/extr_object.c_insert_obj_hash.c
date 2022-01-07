
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;


 unsigned int hash_obj (int *,unsigned int) ;

__attribute__((used)) static void insert_obj_hash(struct object *obj, struct object **hash, unsigned int size)
{
 unsigned int j = hash_obj(&obj->oid, size);

 while (hash[j]) {
  j++;
  if (j >= size)
   j = 0;
 }
 hash[j] = obj;
}
