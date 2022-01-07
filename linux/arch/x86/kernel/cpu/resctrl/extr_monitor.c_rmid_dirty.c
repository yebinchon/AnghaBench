
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rmid_entry {int rmid; } ;


 int QOS_L3_OCCUP_EVENT_ID ;
 scalar_t__ __rmid_read (int ,int ) ;
 scalar_t__ resctrl_cqm_threshold ;

__attribute__((used)) static bool rmid_dirty(struct rmid_entry *entry)
{
 u64 val = __rmid_read(entry->rmid, QOS_L3_OCCUP_EVENT_ID);

 return val >= resctrl_cqm_threshold;
}
