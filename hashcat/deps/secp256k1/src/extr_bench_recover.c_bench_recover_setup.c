
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* msg; int* sig; } ;
typedef TYPE_1__ bench_recover_data ;



void bench_recover_setup(void* arg) {
    int i;
    bench_recover_data *data = (bench_recover_data*)arg;

    for (i = 0; i < 32; i++) {
        data->msg[i] = 1 + i;
    }
    for (i = 0; i < 64; i++) {
        data->sig[i] = 65 + i;
    }
}
