
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ metafile_t ;


 size_t get_meta_bucket (TYPE_1__*) ;
 int * metafile_bucket_bytes ;
 int metafiles ;
 int metafiles_bytes ;

__attribute__((used)) static void del_use (metafile_t *meta) {
  metafile_t *u = meta->prev, *v = meta->next;
  u->next = v;
  v->prev = u;
  meta->prev = meta->next = ((void*)0);
  metafile_bucket_bytes[get_meta_bucket (meta)] -= meta->size;
  metafiles_bytes -= meta->size;
  metafiles--;
}
