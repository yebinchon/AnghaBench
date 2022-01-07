
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bench_ecdh_data ;


 int bench_ecdh ;
 int bench_ecdh_setup ;
 int run_benchmark (char*,int ,int ,int *,int *,int,int) ;

int main(void) {
    bench_ecdh_data data;

    run_benchmark("ecdh", bench_ecdh, bench_ecdh_setup, ((void*)0), &data, 10, 20000);
    return 0;
}
