
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 int metafile_get_date (int) ;
 int writeout_int (int ) ;

__attribute__((used)) static int array_write_date (listree_t *LT, int temp_id) {
  writeout_int (metafile_get_date (temp_id));
  return 0;
}
