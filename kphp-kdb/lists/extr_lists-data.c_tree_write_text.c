
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
 char* get_text_ptr (scalar_t__) ;
 char* metafile_get_text (scalar_t__,int*) ;
 int writeout (char*,int) ;

__attribute__((used)) static int tree_write_text (tree_ext_small_t *T) {
  struct tree_payload *P = LPAYLOAD (T);
  int text_len;
  if (P->text) {
    text_len = get_text_len (P->text);
    writeout (get_text_ptr (P->text), text_len);
  } else {
    char *p = metafile_get_text (OTree.N - NODE_RPOS (T), &text_len);
    writeout (p, text_len);
  }
  return 0;
}
