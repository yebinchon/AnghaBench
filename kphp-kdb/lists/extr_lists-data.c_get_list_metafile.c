
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metafile_index; } ;
typedef TYPE_1__ list_t ;
typedef int list_id_t ;


 TYPE_1__** List ;
 int conv_list_id (int ) ;
 int find_metafile (int ) ;

__attribute__((used)) static inline int get_list_metafile (list_id_t list_id) {
  int i = conv_list_id (list_id);
  if (i < 0) {
    return -1;
  }
  list_t *L = List[i];
  if (!L) {
    return find_metafile (list_id);
  }
  return L->metafile_index;
}
