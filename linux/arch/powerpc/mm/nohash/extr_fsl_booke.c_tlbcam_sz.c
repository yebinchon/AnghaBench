
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long limit; unsigned long start; } ;


 TYPE_1__* tlbcam_addrs ;

unsigned long tlbcam_sz(int idx)
{
 return tlbcam_addrs[idx].limit - tlbcam_addrs[idx].start + 1;
}
