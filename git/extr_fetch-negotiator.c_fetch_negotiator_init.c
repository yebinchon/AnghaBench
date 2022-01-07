
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fetch_negotiation_algorithm; } ;
struct repository {TYPE_1__ settings; } ;
struct fetch_negotiator {int dummy; } ;




 int default_negotiator_init (struct fetch_negotiator*) ;
 int prepare_repo_settings (struct repository*) ;
 int skipping_negotiator_init (struct fetch_negotiator*) ;

void fetch_negotiator_init(struct repository *r,
      struct fetch_negotiator *negotiator)
{
 prepare_repo_settings(r);
 switch(r->settings.fetch_negotiation_algorithm) {
 case 128:
  skipping_negotiator_init(negotiator);
  return;

 case 129:
 default:
  default_negotiator_init(negotiator);
  return;
 }
}
