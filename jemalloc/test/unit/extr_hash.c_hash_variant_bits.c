
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_variant_t ;





 int not_reached () ;

__attribute__((used)) static int
hash_variant_bits(hash_variant_t variant) {
 switch (variant) {
 case 128: return 32;
 case 129: return 128;
 case 130: return 128;
 default: not_reached();
 }
}
