
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_ext_small_t ;
struct tree_payload {scalar_t__ text; scalar_t__ date; scalar_t__ value; scalar_t__ flags; } ;
struct TYPE_2__ {scalar_t__ N; } ;


 int LF_BIGFLAGS ;
 int LF_HAVE_DATES ;
 int LF_HAVE_TEXTS ;
 int LF_HAVE_VALUES ;
 struct tree_payload* LPAYLOAD (int *) ;
 scalar_t__ NODE_RPOS (int *) ;
 TYPE_1__ OTree ;
 int assert (int) ;
 int get_text_len (scalar_t__) ;
 int metafile_get_text (scalar_t__,int*) ;
 int new_flags ;

__attribute__((used)) static int tree_build_flags (tree_ext_small_t *T) {
  struct tree_payload *P = LPAYLOAD (T);
  if ((unsigned)P->flags >= 256) {
    new_flags |= LF_BIGFLAGS;
  }

  if (P->value) {
    new_flags |= LF_HAVE_VALUES;
  }

  if (P->date) {
    new_flags |= LF_HAVE_DATES;
  }

  int text_len = -1;
  if (P->text) {
    text_len = get_text_len (P->text);
  } else {
    metafile_get_text (OTree.N - NODE_RPOS (T), &text_len);
  }
  assert (text_len >= 0);

  if (text_len) {
    new_flags |= LF_HAVE_TEXTS;
  }
  return 0;
}
