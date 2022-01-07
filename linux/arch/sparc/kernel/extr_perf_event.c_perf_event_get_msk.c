
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;



__attribute__((used)) static u8 perf_event_get_msk(unsigned long val)
{
 return val & 0xff;
}
