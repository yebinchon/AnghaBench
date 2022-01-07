
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {void* b; void* a; } ;
typedef TYPE_1__ be128 ;


 int be64_to_cpu (void*) ;
 void* cpu_to_be64 (int) ;
 int* gf128mul_table_be ;

__attribute__((used)) static void gf128mul_x8_bbe(be128 *x)
{
 u64 a = be64_to_cpu(x->a);
 u64 b = be64_to_cpu(x->b);
 u64 _tt = gf128mul_table_be[a >> 56];

 x->a = cpu_to_be64((a << 8) | (b >> 56));
 x->b = cpu_to_be64((b << 8) ^ _tt);
}
