
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* event_count ) (void*) ;char* (* event_type_name ) (void*,int ) ;int (* event ) (void*,int,TYPE_1__*) ;} ;
struct TYPE_5__ {int observation_count; int * observations; int id; } ;
typedef TYPE_1__ EnvCApi_Event ;
typedef TYPE_2__ EnvCApi ;


 int fputs (char*,int ) ;
 int print_observation (int *) ;
 int printf (char*,int,char*) ;
 int stdout ;
 int stub1 (void*) ;
 int stub2 (void*,int,TYPE_1__*) ;
 char* stub3 (void*,int ) ;
 char* stub4 (void*,int ) ;

__attribute__((used)) static int print_events(EnvCApi* env_c_api, void* context) {
  int event_count = env_c_api->event_count(context);
  for (int e = 0; e < event_count; ++e) {
    EnvCApi_Event event;
    env_c_api->event(context, e, &event);
    printf("Event %d: \"%s\" - ", e,
           env_c_api->event_type_name(context, event.id));
    for (int obs_id = 0; obs_id < event.observation_count; ++obs_id) {
      if (obs_id != 0) {
        fputs(", ", stdout);
      }
      print_observation(&event.observations[obs_id]);
    }
    fputs("\n", stdout);
  }
  return event_count;
}
