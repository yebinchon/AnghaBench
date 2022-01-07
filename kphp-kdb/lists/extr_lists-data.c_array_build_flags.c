
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 int LF_BIGFLAGS ;
 int LF_HAVE_DATES ;
 int LF_HAVE_TEXTS ;
 int LF_HAVE_VALUES ;
 scalar_t__ metafile_get_date (int) ;
 int metafile_get_flags (int) ;
 int metafile_get_text (int,int*) ;
 scalar_t__ metafile_get_value (int) ;
 int new_flags ;

__attribute__((used)) static int array_build_flags (listree_t *LT, int temp_id) {
  int fl = metafile_get_flags (temp_id);
  if ((unsigned)fl >= 256) {
    new_flags |= LF_BIGFLAGS;
  }
  if (metafile_get_value (temp_id)) {
    new_flags |= LF_HAVE_VALUES;
  }
  if (metafile_get_date (temp_id)) {
    new_flags |= LF_HAVE_DATES;
  }
  int text_len;
  metafile_get_text (temp_id, &text_len);
  if (text_len) {
    new_flags |= LF_HAVE_TEXTS;
  }
  return 0;
}
