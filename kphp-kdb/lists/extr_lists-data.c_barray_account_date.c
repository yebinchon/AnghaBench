
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 int account_date (int ) ;
 int metafile_get_date (int) ;

__attribute__((used)) static inline int barray_account_date (listree_t *LT, int temp_id) {
  return account_date (metafile_get_date (temp_id));
}
