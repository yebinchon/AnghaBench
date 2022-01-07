
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;


 int free (int *) ;
 int tot_memory_transactions ;

__attribute__((used)) static void transaction_free (transaction_t *P) {
  free (P);
  tot_memory_transactions--;
}
