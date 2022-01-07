
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QOS_L3_MBM_LOCAL_EVENT_ID ;
 int QOS_L3_MBM_TOTAL_EVENT_ID ;

__attribute__((used)) static inline bool is_mbm_event(int e)
{
 return (e >= QOS_L3_MBM_TOTAL_EVENT_ID &&
  e <= QOS_L3_MBM_LOCAL_EVENT_ID);
}
