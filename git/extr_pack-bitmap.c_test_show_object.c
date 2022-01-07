
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
struct bitmap_test_data {int seen; int prg; int base; int bitmap_git; } ;


 int bitmap_position (int ,int *) ;
 int bitmap_set (int ,int) ;
 int die (char*,int ) ;
 int display_progress (int ,int ) ;
 int oid_to_hex (int *) ;

__attribute__((used)) static void test_show_object(struct object *object, const char *name,
        void *data)
{
 struct bitmap_test_data *tdata = data;
 int bitmap_pos;

 bitmap_pos = bitmap_position(tdata->bitmap_git, &object->oid);
 if (bitmap_pos < 0)
  die("Object not in bitmap: %s\n", oid_to_hex(&object->oid));

 bitmap_set(tdata->base, bitmap_pos);
 display_progress(tdata->prg, ++tdata->seen);
}
