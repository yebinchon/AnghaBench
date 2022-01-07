
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* y; int n; int p; } ;
typedef TYPE_1__ suffix_array_t ;


 int malloc (int) ;
 int suffix_array_lcp_init (TYPE_1__*) ;
 int suffix_array_sort (TYPE_1__*) ;
 int vkprintf (int,char*,int,unsigned char*) ;

void suffix_array_init (suffix_array_t *A, unsigned char *y, int n) {
  vkprintf (3, "suffix_array_init (%.*s)\n", n, y);
  A->y = y;
  A->n = n;
  A->p = malloc (4 * n);
  suffix_array_sort (A);
  suffix_array_lcp_init (A);
}
