
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset1; int count; int offset2; } ;
typedef TYPE_1__ bench_data ;


 int POINTS ;

__attribute__((used)) static void bench_ecmult_setup(void* arg) {
    bench_data* data = (bench_data*)arg;
    data->offset1 = (data->count * 0x537b7f6f + 0x8f66a481) % POINTS;
    data->offset2 = (data->count * 0x7f6f537b + 0x6a1a8f49) % POINTS;
}
