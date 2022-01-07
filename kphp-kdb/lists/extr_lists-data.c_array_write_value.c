
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 int metafile_get_value (int) ;
 int writeout_value (int ) ;

__attribute__((used)) static int array_write_value (listree_t *LT, int temp_id) {
  writeout_value (metafile_get_value (temp_id));
  return 0;
}
