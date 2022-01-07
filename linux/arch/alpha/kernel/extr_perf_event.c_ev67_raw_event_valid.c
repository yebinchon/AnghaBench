
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ EV67_CYCLES ;
 scalar_t__ EV67_LAST_ET ;

__attribute__((used)) static int ev67_raw_event_valid(u64 config)
{
 return config >= EV67_CYCLES && config < EV67_LAST_ET;
}
