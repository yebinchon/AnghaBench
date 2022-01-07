
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int filename; } ;
typedef TYPE_1__ file_t ;


 int assert (int ) ;
 int free_file (TYPE_1__*) ;
 int strcmp (char const* const,int ) ;

file_t *remove_file_from_list (file_t *x, const char *const filename) {
  int t = 0;
  file_t **p = &x;
  while (*p != ((void*)0)) {
    file_t *V = *p;
    assert (V->filename);
    if (!strcmp (filename, V->filename)) {
      *p = V->next;
      free_file (V);
      return t ? x : *p;
    }
    p = &V->next;
    t++;
  }
  return x;
}
