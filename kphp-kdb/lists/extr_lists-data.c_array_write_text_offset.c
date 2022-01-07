
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 int metafile_get_text (int,int*) ;
 int new_text_cur_offset ;
 int writeout_int (int) ;

__attribute__((used)) static int array_write_text_offset (listree_t *LT, int temp_id) {
  writeout_int (new_text_cur_offset);
  int text_len;
  metafile_get_text (temp_id, &text_len);
  new_text_cur_offset += text_len;
  return 0;
}
