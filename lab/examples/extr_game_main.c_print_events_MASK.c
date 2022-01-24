#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* event_count ) (void*) ;char* (* event_type_name ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* event ) (void*,int,TYPE_1__*) ;} ;
struct TYPE_5__ {int observation_count; int /*<<< orphan*/ * observations; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ EnvCApi_Event ;
typedef  TYPE_2__ EnvCApi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,TYPE_1__*) ; 
 char* FUNC5 (void*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(EnvCApi* env_c_api, void* context) {
  int event_count = env_c_api->event_count(context);
  for (int e = 0; e < event_count; ++e) {
    EnvCApi_Event event;
    env_c_api->event(context, e, &event);
    FUNC2("Event %d: \"%s\" - ", e,
           env_c_api->event_type_name(context, event.id));
    for (int obs_id = 0; obs_id < event.observation_count; ++obs_id) {
      if (obs_id != 0) {
        FUNC0(", ", stdout);
      }
      FUNC1(&event.observations[obs_id]);
    }
    FUNC0("\n", stdout);
  }
  return event_count;
}