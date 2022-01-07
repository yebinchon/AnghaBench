
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {unsigned char const* hash; } ;



__attribute__((used)) static const unsigned char *sha1_access(size_t index, void *table)
{
 struct object_id *array = table;
 return array[index].hash;
}
