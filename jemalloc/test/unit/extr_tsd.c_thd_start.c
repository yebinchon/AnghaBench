
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int MALLOC_TSD_TEST_DATA_INIT ;
 int assert_ptr_not_null (void*,char*) ;
 int assert_x_eq (int ,int,char*) ;
 int data_cleanup ;
 int free (void*) ;
 void* malloc (int) ;
 int * tsd_fetch () ;
 int tsd_test_callback_set (int *,int *) ;
 int tsd_test_data_get (int *) ;
 int tsd_test_data_set (int *,int) ;

__attribute__((used)) static void *
thd_start(void *arg) {
 int d = (int)(uintptr_t)arg;
 void *p;

 tsd_t *tsd = tsd_fetch();
 assert_x_eq(tsd_test_data_get(tsd), MALLOC_TSD_TEST_DATA_INIT,
     "Initial tsd get should return initialization value");

 p = malloc(1);
 assert_ptr_not_null(p, "Unexpected malloc() failure");

 tsd_test_data_set(tsd, d);
 assert_x_eq(tsd_test_data_get(tsd), d,
     "After tsd set, tsd get should return value that was set");

 d = 0;
 assert_x_eq(tsd_test_data_get(tsd), (int)(uintptr_t)arg,
     "Resetting local data should have no effect on tsd");

 tsd_test_callback_set(tsd, &data_cleanup);

 free(p);
 return ((void*)0);
}
