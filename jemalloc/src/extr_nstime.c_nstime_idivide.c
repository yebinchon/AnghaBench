
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ns; } ;
typedef TYPE_1__ nstime_t ;


 int assert (int) ;

void
nstime_idivide(nstime_t *time, uint64_t divisor) {
 assert(divisor != 0);

 time->ns /= divisor;
}
