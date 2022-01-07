
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {scalar_t__ prev_time; } ;
typedef scalar_t__ __u64 ;


 int jent_get_nstime (scalar_t__*) ;
 int jent_lfsr_time (struct rand_data*,scalar_t__,int ) ;
 int jent_memaccess (struct rand_data*,int ) ;
 int jent_stuck (struct rand_data*,scalar_t__) ;

__attribute__((used)) static int jent_measure_jitter(struct rand_data *ec)
{
 __u64 time = 0;
 __u64 current_delta = 0;


 jent_memaccess(ec, 0);





 jent_get_nstime(&time);
 current_delta = time - ec->prev_time;
 ec->prev_time = time;


 jent_lfsr_time(ec, current_delta, 0);


 return jent_stuck(ec, current_delta);
}
