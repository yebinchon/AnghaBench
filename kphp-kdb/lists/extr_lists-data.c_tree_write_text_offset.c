
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_ext_small_t ;
struct tree_payload {scalar_t__ text; } ;
struct TYPE_2__ {scalar_t__ N; } ;


 struct tree_payload* LPAYLOAD (int *) ;
 scalar_t__ NODE_RPOS (int *) ;
 TYPE_1__ OTree ;
 int get_text_len (scalar_t__) ;
 int metafile_get_text (scalar_t__,int*) ;
 int new_text_cur_offset ;
 int writeout_int (int) ;

__attribute__((used)) static int tree_write_text_offset (tree_ext_small_t *T) {
  writeout_int (new_text_cur_offset);
  struct tree_payload *P = LPAYLOAD (T);
  int text_len;
  if (P->text) {
    text_len = get_text_len (P->text);
  } else {
    metafile_get_text (OTree.N - NODE_RPOS (T), &text_len);
  }
  new_text_cur_offset += text_len;
  return 0;
}
