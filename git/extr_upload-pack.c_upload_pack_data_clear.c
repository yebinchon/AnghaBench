
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upload_pack_data {int deepen_not; int shallows; int haves; int wanted_refs; int wants; } ;


 int object_array_clear (int *) ;
 int oid_array_clear (int *) ;
 int string_list_clear (int *,int) ;

__attribute__((used)) static void upload_pack_data_clear(struct upload_pack_data *data)
{
 object_array_clear(&data->wants);
 string_list_clear(&data->wanted_refs, 1);
 oid_array_clear(&data->haves);
 object_array_clear(&data->shallows);
 string_list_clear(&data->deepen_not, 0);
}
