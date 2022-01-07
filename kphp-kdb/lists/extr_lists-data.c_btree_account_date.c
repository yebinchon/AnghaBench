
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_ext_small_t ;
struct tree_payload {int date; } ;


 struct tree_payload* LPAYLOAD (int *) ;
 int account_date (int ) ;

__attribute__((used)) static inline int btree_account_date (tree_ext_small_t *T) {
  struct tree_payload *P = LPAYLOAD (T);
  return account_date (P->date);
}
