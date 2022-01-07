
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct partition_meta_info {scalar_t__* volname; int uuid; } ;
struct parsed_partitions {TYPE_1__* parts; } ;
struct TYPE_2__ {int has_info; struct partition_meta_info info; } ;


 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static void set_info(struct parsed_partitions *state, int slot,
       u32 disksig)
{
 struct partition_meta_info *info = &state->parts[slot].info;

 snprintf(info->uuid, sizeof(info->uuid), "%08x-%02x", disksig,
   slot);
 info->volname[0] = 0;
 state->parts[slot].has_info = 1;
}
