
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mt7530_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 scalar_t__ MT7620_MIB_COUNTER_BASE ;
 int mt7530_r32 (struct mt7530_priv*,scalar_t__) ;
 TYPE_1__* mt7620_mibs ;

__attribute__((used)) static u64 get_mib_counter_7620(struct mt7530_priv *priv, int i)
{
 return mt7530_r32(priv, MT7620_MIB_COUNTER_BASE + mt7620_mibs[i].offset);
}
