
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;


 int lru_add (int *) ;
 int lru_remove (int *) ;

void lru_reuse (transaction_t *T) {
  lru_remove (T);
  lru_add (T);
}
