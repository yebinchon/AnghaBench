
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EVENT_THR_SEL_MASK ;
 int EVENT_THR_SEL_SHIFT ;

__attribute__((used)) static inline bool event_is_threshold(u64 event)
{
 return (event >> EVENT_THR_SEL_SHIFT) & EVENT_THR_SEL_MASK;
}
