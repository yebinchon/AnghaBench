
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flexpriority_enabled ;

__attribute__((used)) static inline bool report_flexpriority(void)
{
 return flexpriority_enabled;
}
