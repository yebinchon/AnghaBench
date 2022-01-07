
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qkey ;


 int dl_free (int *,int) ;
 scalar_t__ dl_get_memory_used () ;
 int keys_cnt ;
 int keys_memory ;

void qkey_free (qkey *q) {
  keys_cnt--;

  keys_memory -= dl_get_memory_used();
  dl_free (q, sizeof (qkey));
  keys_memory += dl_get_memory_used();




}
