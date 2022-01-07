
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_2__ {int phase; int error; } ;
typedef TYPE_1__ global_slow_data_t ;


 int ATOMIC_SEQ_CST ;
 int atomic_load_u32 (int *,int ) ;
 int atomic_store_b (int *,int,int ) ;
 int atomic_store_u32 (int *,int,int ) ;
 int free (int ) ;
 int mallocx (int,int ) ;
 scalar_t__ originally_fast ;
 int tsd_fast (int *) ;
 int * tsd_fetch () ;

__attribute__((used)) static void *
thd_start_global_slow(void *arg) {

 global_slow_data_t *data = (global_slow_data_t *)arg;
 free(mallocx(1, 0));

 tsd_t *tsd = tsd_fetch();




 atomic_store_b(&data->error, originally_fast && !tsd_fast(tsd),
     ATOMIC_SEQ_CST);
 atomic_store_u32(&data->phase, 1, ATOMIC_SEQ_CST);


 while (atomic_load_u32(&data->phase, ATOMIC_SEQ_CST) != 2) {
 }
 free(mallocx(1, 0));
 atomic_store_b(&data->error, tsd_fast(tsd), ATOMIC_SEQ_CST);
 atomic_store_u32(&data->phase, 3, ATOMIC_SEQ_CST);


 while (atomic_load_u32(&data->phase, ATOMIC_SEQ_CST) != 4) {
 }
 free(mallocx(1, 0));
 atomic_store_b(&data->error, tsd_fast(tsd), ATOMIC_SEQ_CST);
 atomic_store_u32(&data->phase, 5, ATOMIC_SEQ_CST);


 while (atomic_load_u32(&data->phase, ATOMIC_SEQ_CST) != 6) {
 }
 free(mallocx(1, 0));

 atomic_store_b(&data->error, tsd_fast(tsd), ATOMIC_SEQ_CST);
 atomic_store_u32(&data->phase, 7, ATOMIC_SEQ_CST);


 while (atomic_load_u32(&data->phase, ATOMIC_SEQ_CST) != 8) {
 }
 free(mallocx(1, 0));




 atomic_store_b(&data->error, originally_fast && !tsd_fast(tsd),
     ATOMIC_SEQ_CST);
 atomic_store_u32(&data->phase, 9, ATOMIC_SEQ_CST);

 return ((void*)0);
}
