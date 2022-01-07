
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filename; } ;
typedef TYPE_1__ file_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_file (const void *x, const void *y) {
  const file_t *h1 = *(const file_t **) x;
  const file_t *h2 = *(const file_t **) y;
  return strcmp (h1->filename, h2->filename);
}
