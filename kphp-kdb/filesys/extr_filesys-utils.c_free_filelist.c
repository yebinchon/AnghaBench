
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ file_t ;


 int free_file (TYPE_1__*) ;

void free_filelist (file_t *p) {
  while (p != ((void*)0)) {
    file_t *w = p->next;
    free_file (p);
    p = w;
  }
}
