
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {void* a; void* b; } ;
typedef TYPE_1__ le128 ;


 void* cpu_to_le64 (scalar_t__) ;
 scalar_t__ le64_to_cpu (void*) ;

__attribute__((used)) static inline void le128_sub(le128 *r, const le128 *v1, const le128 *v2)
{
 u64 x = le64_to_cpu(v1->b);
 u64 y = le64_to_cpu(v2->b);

 r->b = cpu_to_le64(x - y);
 r->a = cpu_to_le64(le64_to_cpu(v1->a) - le64_to_cpu(v2->a) -
      (x - y > x));
}
