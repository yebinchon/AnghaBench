
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int function; } ;
struct rapl_pmu {struct hrtimer hrtimer; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int hrtimer_init (struct hrtimer*,int ,int ) ;
 int rapl_hrtimer_handle ;

__attribute__((used)) static void rapl_hrtimer_init(struct rapl_pmu *pmu)
{
 struct hrtimer *hr = &pmu->hrtimer;

 hrtimer_init(hr, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 hr->function = rapl_hrtimer_handle;
}
