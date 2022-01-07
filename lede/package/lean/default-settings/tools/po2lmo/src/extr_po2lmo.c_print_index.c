
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int offset; int val_id; int key_id; } ;
typedef TYPE_1__ lmo_entry_t ;
typedef int FILE ;


 int cmp_index ;
 int print_uint32 (int ,int *) ;
 int qsort (void*,int,int,int ) ;

__attribute__((used)) static void print_index(void *array, int n, FILE *out)
{
 lmo_entry_t *e;

 qsort(array, n, sizeof(*e), cmp_index);

 for (e = array; n > 0; n--, e++)
 {
  print_uint32(e->key_id, out);
  print_uint32(e->val_id, out);
  print_uint32(e->offset, out);
  print_uint32(e->length, out);
 }
}
