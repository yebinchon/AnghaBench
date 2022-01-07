
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gather_data {scalar_t__ filedata_len; int * filedata; int * filename; scalar_t__ key_len; int * key; TYPE_1__* prev; struct gather_data* next; } ;
struct TYPE_2__ {struct gather_data* next; } ;


 int active_gathers ;
 struct gather_data* active_write_threads ;
 scalar_t__ strlen (int *) ;
 int tszfree (int *,scalar_t__) ;
 int zfree (struct gather_data*,int) ;

void free_gather (struct gather_data *G) {
  if (active_write_threads == G) {
    active_write_threads = G->next;
  }
  if (G->prev) {
    G->prev->next = G->next;
  }
  if (G->next) {
    G->next->prev = G->prev;
  }

  if (G->key != ((void*)0)) {
    tszfree (G->key, G->key_len + 1);
  }
  if (G->filename != ((void*)0)) {
    tszfree (G->filename, strlen (G->filename) + 1);
  }
  if (G->filedata != ((void*)0)) {
    tszfree (G->filedata, G->filedata_len);
  }
  zfree (G, sizeof (struct gather_data));

  active_gathers--;
}
