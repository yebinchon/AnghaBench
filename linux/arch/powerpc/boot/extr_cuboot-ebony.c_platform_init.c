
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_enet1addr; int bi_enetaddr; } ;


 int CUBOOT_INIT () ;
 TYPE_1__ bd ;
 int ebony_init (int *,int *) ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5,
                   unsigned long r6, unsigned long r7)
{
 CUBOOT_INIT();
 ebony_init(&bd.bi_enetaddr, &bd.bi_enet1addr);
}
