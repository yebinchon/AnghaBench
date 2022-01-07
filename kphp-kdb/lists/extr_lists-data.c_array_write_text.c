
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 char* metafile_get_text (int,int*) ;
 int writeout (char*,int) ;

__attribute__((used)) static int array_write_text (listree_t *LT, int temp_id) {
  int text_len;
  char *p = metafile_get_text (temp_id, &text_len);
  writeout (p, text_len);
  return 0;
}
