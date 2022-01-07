
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_ge ;
struct TYPE_2__ {size_t offset1; size_t offset2; int * pubkeys; int * scalars; scalar_t__ includes_g; } ;
typedef TYPE_1__ bench_data ;


 size_t POINTS ;
 int secp256k1_ge_const_g ;

__attribute__((used)) static int bench_callback(secp256k1_scalar* sc, secp256k1_ge* ge, size_t idx, void* arg) {
    bench_data* data = (bench_data*)arg;
    if (data->includes_g) ++idx;
    if (idx == 0) {
        *sc = data->scalars[data->offset1];
        *ge = secp256k1_ge_const_g;
    } else {
        *sc = data->scalars[(data->offset1 + idx) % POINTS];
        *ge = data->pubkeys[(data->offset2 + idx - 1) % POINTS];
    }
    return 1;
}
