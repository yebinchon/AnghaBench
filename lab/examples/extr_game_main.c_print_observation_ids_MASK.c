#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* observation ) (void*,int const,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EnvCApi_Observation ;
typedef  TYPE_1__ EnvCApi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (void*,int const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(EnvCApi* env_c_api, void* context,
                                  const char* observation_names[],
                                  const int ob_ids[], int ob_count) {
  for (int ob = 0; ob < ob_count; ++ob) {
    if (ob_ids[ob] < 0) {
      continue;
    }
    EnvCApi_Observation observation;
    env_c_api->observation(context, ob_ids[ob], &observation);
    FUNC2("observation \"%s\" - ", observation_names[ob]);
    FUNC1(&observation);
    FUNC0("\n", stdout);
  }
}