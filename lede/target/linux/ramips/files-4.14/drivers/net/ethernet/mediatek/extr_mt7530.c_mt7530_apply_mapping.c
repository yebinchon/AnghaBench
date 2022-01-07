
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt7530_priv {TYPE_2__* vlan_entries; TYPE_1__* port_entries; } ;
struct mt7530_mapping {int * vids; int * etags; int * members; int * pvids; } ;
struct TYPE_4__ {int vid; int etags; int member; } ;
struct TYPE_3__ {int pvid; } ;


 int MT7530_NUM_PORTS ;
 int MT7530_NUM_VLANS ;

__attribute__((used)) static void
mt7530_apply_mapping(struct mt7530_priv *mt7530, struct mt7530_mapping *map)
{
 int i = 0;

 for (i = 0; i < MT7530_NUM_PORTS; i++)
  mt7530->port_entries[i].pvid = map->pvids[i];

 for (i = 0; i < MT7530_NUM_VLANS; i++) {
  mt7530->vlan_entries[i].member = map->members[i];
  mt7530->vlan_entries[i].etags = map->etags[i];
  mt7530->vlan_entries[i].vid = map->vids[i];
 }
}
