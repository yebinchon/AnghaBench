
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ns; } ;
typedef TYPE_1__ nstime_t ;


 int UINT64_MAX ;
 int assert (int) ;

void
nstime_imultiply(nstime_t *time, uint64_t multiplier) {
 assert((((time->ns | multiplier) & (UINT64_MAX << (sizeof(uint64_t) <<
     2))) == 0) || ((time->ns * multiplier) / multiplier == time->ns));

 time->ns *= multiplier;
}
