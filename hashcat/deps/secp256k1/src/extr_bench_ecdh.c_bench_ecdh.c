
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scalar; int point; int ctx; } ;
typedef TYPE_1__ bench_ecdh_data ;


 int CHECK (int) ;
 int secp256k1_ecdh (int ,unsigned char*,int *,int ,int *,int *) ;

__attribute__((used)) static void bench_ecdh(void* arg) {
    int i;
    unsigned char res[32];
    bench_ecdh_data *data = (bench_ecdh_data*)arg;

    for (i = 0; i < 20000; i++) {
        CHECK(secp256k1_ecdh(data->ctx, res, &data->point, data->scalar, ((void*)0), ((void*)0)) == 1);
    }
}
