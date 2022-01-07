
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int list_id_t ;
struct TYPE_2__ {int tot_lists; } ;


 int FLI_ENTRY_LIST_ID (int) ;
 TYPE_1__ Header ;
 int list_id_compare (int ,int ) ;
 scalar_t__ list_id_equal (int ,int ) ;

int find_metafile (list_id_t list_id) {
  int l = -1, r = Header.tot_lists;
  int p = -1;
  while (r - l > 1) {
    int x = (l + r) >> 1;

    p = list_id_compare (list_id, FLI_ENTRY_LIST_ID(x));
    if (p < 0) {
      r = x;
    } else {
      l = x;
    }
  }
  if (l >= 0 && list_id_equal (list_id, FLI_ENTRY_LIST_ID (l))) {
    return l;
  } else {
    return -1;
  }
}
