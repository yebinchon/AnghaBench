
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_map {int dummy; } ;
struct rate_estimator {int maxcps; int cps; int avcps; int interval; int ewma_log; int timer; struct vc_map* vc; } ;


 int GFP_KERNEL ;
 int HZ ;
 int idt77252_est_timer ;
 scalar_t__ jiffies ;
 struct rate_estimator* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct rate_estimator *
idt77252_init_est(struct vc_map *vc, int pcr)
{
 struct rate_estimator *est;

 est = kzalloc(sizeof(struct rate_estimator), GFP_KERNEL);
 if (!est)
  return ((void*)0);
 est->maxcps = pcr < 0 ? -pcr : pcr;
 est->cps = est->maxcps;
 est->avcps = est->cps << 5;
 est->vc = vc;

 est->interval = 2;
 est->ewma_log = 2;
 timer_setup(&est->timer, idt77252_est_timer, 0);
 mod_timer(&est->timer, jiffies + ((HZ / 4) << est->interval));

 return est;
}
