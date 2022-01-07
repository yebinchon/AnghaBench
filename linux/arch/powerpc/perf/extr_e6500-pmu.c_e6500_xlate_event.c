
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int FSL_EMB_EVENT_THRESH ;
 int FSL_EMB_EVENT_THRESHMUL ;
 int FSL_EMB_EVENT_VALID ;
 scalar_t__ num_events ;

__attribute__((used)) static u64 e6500_xlate_event(u64 event_id)
{
 u32 event_low = (u32)event_id;
 if (event_low >= num_events ||
  (event_id & (FSL_EMB_EVENT_THRESHMUL | FSL_EMB_EVENT_THRESH)))
  return 0;

 return FSL_EMB_EVENT_VALID;
}
