
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int hash; int to; int rev; } ;
typedef TYPE_1__ lookup_table ;


 int assert (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,int ) ;
 int htbl_check (int *) ;
 int poly_h (int ,int) ;
 int stderr ;

inline void ltbl_check (lookup_table *table) {
  int need = poly_h (table->rev, table->size);
  if (need != table->hash) {
    fprintf (stderr, "Wrong hashtable: size = %d, h = %p.", table->size, table->rev);
    fflush (stderr);
  }
  assert (need == table->hash);

  htbl_check (&table->to);
}
