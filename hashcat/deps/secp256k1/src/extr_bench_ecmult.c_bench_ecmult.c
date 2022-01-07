
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t count; int includes_g; size_t offset1; size_t offset2; int * scalars; int * output; int scratch; TYPE_1__* ctx; int (* ecmult_multi ) (int *,int *,int ,int *,int *,int ,void*,size_t) ;} ;
typedef TYPE_2__ bench_data ;
struct TYPE_3__ {int ecmult_ctx; int error_callback; } ;


 size_t ITERS ;
 size_t POINTS ;
 int bench_callback ;
 int stub1 (int *,int *,int ,int *,int *,int ,void*,size_t) ;

__attribute__((used)) static void bench_ecmult(void* arg) {
    bench_data* data = (bench_data*)arg;

    size_t count = data->count;
    int includes_g = data->includes_g;
    size_t iters = 1 + ITERS / count;
    size_t iter;

    for (iter = 0; iter < iters; ++iter) {
        data->ecmult_multi(&data->ctx->error_callback, &data->ctx->ecmult_ctx, data->scratch, &data->output[iter], data->includes_g ? &data->scalars[data->offset1] : ((void*)0), bench_callback, arg, count - includes_g);
        data->offset1 = (data->offset1 + count) % POINTS;
        data->offset2 = (data->offset2 + count - 1) % POINTS;
    }
}
