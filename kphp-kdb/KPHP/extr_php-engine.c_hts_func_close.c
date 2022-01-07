
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts_data {int * extra; } ;
struct connection {int dummy; } ;
typedef int php_worker ;


 struct hts_data* HTS_DATA (struct connection*) ;
 int assert (int ) ;
 int php_worker_main (int *) ;
 int php_worker_terminate (int *,int,char*) ;

int hts_func_close (struct connection *c, int who) {
  struct hts_data *D = HTS_DATA(c);

  php_worker *worker = D->extra;
  if (worker != ((void*)0)) {
    php_worker_terminate (worker, 1, "http connection close");
    int res = php_worker_main (worker);
    D->extra = ((void*)0);
    assert ("worker is unfinished after closing connection" && res == 1);
  }
  return 0;
}
