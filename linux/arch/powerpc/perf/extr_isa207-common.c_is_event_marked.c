
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EVENT_IS_MARKED ;

__attribute__((used)) static inline bool is_event_marked(u64 event)
{
 if (event & EVENT_IS_MARKED)
  return 1;

 return 0;
}
