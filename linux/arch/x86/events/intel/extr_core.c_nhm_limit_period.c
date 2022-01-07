
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;


 int max (int ,unsigned long long) ;

__attribute__((used)) static u64 nhm_limit_period(struct perf_event *event, u64 left)
{
 return max(left, 32ULL);
}
