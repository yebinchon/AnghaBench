
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitmap ;


 scalar_t__ REG_POS (int) ;
 int VEC_POS (int) ;
 int clear_bit (int ,int ) ;

__attribute__((used)) static inline void kvm_lapic_clear_vector(int vec, void *bitmap)
{
 clear_bit(VEC_POS(vec), (bitmap) + REG_POS(vec));
}
