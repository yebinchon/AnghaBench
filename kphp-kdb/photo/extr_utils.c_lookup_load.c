
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int real_n; int* x; int* y; } ;
typedef TYPE_1__ lookup ;


 int READ_INT (char*,int) ;
 int assert (int) ;

void lookup_load (lookup *l, char *metafile, int metafile_len) {
  if (metafile != ((void*)0)) {
    assert (metafile_len >= (int)sizeof (int));

    int n;
    READ_INT (metafile, n);







    l->n = n;

    assert (metafile_len == (int)sizeof (int) + (int)sizeof (int) * l->n * 2);
  } else {
    l->n = 0;
  }
  l->x = (int *)metafile;
  l->y = (int *)metafile + l->n;
}
