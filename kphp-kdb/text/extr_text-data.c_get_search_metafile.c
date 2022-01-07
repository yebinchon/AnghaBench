
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int search_mf; } ;
typedef TYPE_1__ user_t ;
struct TYPE_6__ {char* data; } ;
typedef TYPE_2__ core_mf_t ;


 TYPE_2__* touch_metafile (int ) ;

inline char *get_search_metafile (user_t *U) {
  core_mf_t *M = touch_metafile (U->search_mf);
  return M ? M->data : 0;
}
