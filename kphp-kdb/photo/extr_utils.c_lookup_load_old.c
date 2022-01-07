
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int real_n; int* x; int* y; } ;
typedef TYPE_1__ lookup ;



size_t lookup_load_old (lookup *l, char *metafile, int max_metafile_len, int n) {
  size_t size = 0;







  l->n = n;

  size = sizeof (int) * l->n * 2;


  l->x = (int *)metafile;
  l->y = (int *)metafile + l->n;
  return size;
}
