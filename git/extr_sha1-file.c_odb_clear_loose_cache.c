
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_directory {int loose_objects_subdir_seen; int * loose_objects_cache; } ;


 int ARRAY_SIZE (int *) ;
 int memset (int *,int ,int) ;
 int oid_array_clear (int *) ;

void odb_clear_loose_cache(struct object_directory *odb)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(odb->loose_objects_cache); i++)
  oid_array_clear(&odb->loose_objects_cache[i]);
 memset(&odb->loose_objects_subdir_seen, 0,
        sizeof(odb->loose_objects_subdir_seen));
}
