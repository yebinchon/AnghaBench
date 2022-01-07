
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct bitmap_test_data {int seen; int prg; int base; int bitmap_git; } ;


 int bitmap_position (int ,int *) ;
 int bitmap_set (int ,int) ;
 int die (char*,int ) ;
 int display_progress (int ,int ) ;
 int oid_to_hex (int *) ;

__attribute__((used)) static void test_show_commit(struct commit *commit, void *data)
{
 struct bitmap_test_data *tdata = data;
 int bitmap_pos;

 bitmap_pos = bitmap_position(tdata->bitmap_git,
         &commit->object.oid);
 if (bitmap_pos < 0)
  die("Object not in bitmap: %s\n", oid_to_hex(&commit->object.oid));

 bitmap_set(tdata->base, bitmap_pos);
 display_progress(tdata->prg, ++tdata->seen);
}
