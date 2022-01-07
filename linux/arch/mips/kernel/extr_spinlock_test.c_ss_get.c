
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ktime_t ;


 int DEFINE_RAW_SPINLOCK (int ) ;
 int ktime_get () ;
 int ktime_us_delta (int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int ss_spin ;

__attribute__((used)) static int ss_get(void *data, u64 *val)
{
 ktime_t start, finish;
 int loops;
 int cont;
 DEFINE_RAW_SPINLOCK(ss_spin);

 loops = 1000000;
 cont = 1;

 start = ktime_get();

 while (cont) {
  raw_spin_lock(&ss_spin);
  loops--;
  if (loops == 0)
   cont = 0;
  raw_spin_unlock(&ss_spin);
 }

 finish = ktime_get();

 *val = ktime_us_delta(finish, start);

 return 0;
}
