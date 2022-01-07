
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_index_data ;
struct TYPE_3__ {int user_cnt; int * user_index; } ;
typedef TYPE_1__ index_header ;


 int dl_free (int *,int) ;

void free_header (index_header *header) {
  if (header->user_index != ((void*)0)) {
    dl_free (header->user_index, sizeof (user_index_data) * (header->user_cnt + 1));
  }
}
