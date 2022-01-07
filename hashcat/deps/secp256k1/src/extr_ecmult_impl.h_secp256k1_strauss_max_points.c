
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scratch ;
typedef int secp256k1_callback ;


 int STRAUSS_SCRATCH_OBJECTS ;
 size_t secp256k1_scratch_max_allocation (int const*,int *,int ) ;
 size_t secp256k1_strauss_scratch_size (int) ;

__attribute__((used)) static size_t secp256k1_strauss_max_points(const secp256k1_callback* error_callback, secp256k1_scratch *scratch) {
    return secp256k1_scratch_max_allocation(error_callback, scratch, STRAUSS_SCRATCH_OBJECTS) / secp256k1_strauss_scratch_size(1);
}
