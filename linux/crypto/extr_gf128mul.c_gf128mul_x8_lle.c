
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {void* a; void* b; } ;
typedef TYPE_1__ be128 ;


 int be64_to_cpu (void*) ;
 void* cpu_to_be64 (int) ;
 int* gf128mul_table_le ;

__attribute__((used)) static void gf128mul_x8_lle(be128 *x)
{
 u64 a = be64_to_cpu(x->a);
 u64 b = be64_to_cpu(x->b);
 u64 _tt = gf128mul_table_le[b & 0xff];

 x->b = cpu_to_be64((b >> 8) | (a << 56));
 x->a = cpu_to_be64((a >> 8) ^ (_tt << 48));
}
