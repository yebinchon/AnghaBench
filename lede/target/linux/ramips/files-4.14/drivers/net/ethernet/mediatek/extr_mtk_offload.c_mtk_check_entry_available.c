
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {scalar_t__ state; } ;
struct mtk_foe_entry {TYPE_1__ bfib1; } ;
struct mtk_eth {scalar_t__ foe_table; } ;


 scalar_t__ BIND ;

__attribute__((used)) static int
mtk_check_entry_available(struct mtk_eth *eth, u32 hash)
{
 struct mtk_foe_entry entry = ((struct mtk_foe_entry *)eth->foe_table)[hash];

 return (entry.bfib1.state == BIND)? 0:1;
}
