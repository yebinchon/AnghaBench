
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; } ;
typedef TYPE_1__ chastore_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ chanode_t ;


 int xdl_free (TYPE_2__*) ;

void xdl_cha_free(chastore_t *cha) {
 chanode_t *cur, *tmp;

 for (cur = cha->head; (tmp = cur) != ((void*)0);) {
  cur = cur->next;
  xdl_free(tmp);
 }
}
