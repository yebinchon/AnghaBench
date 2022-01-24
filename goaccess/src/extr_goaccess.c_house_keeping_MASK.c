#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ debug_log; scalar_t__ invalid_requests_log; int /*<<< orphan*/  output_stdout; scalar_t__ list_agents; } ;
struct TYPE_8__ {scalar_t__ pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_7__ conf ; 
 scalar_t__ dash ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__* glog ; 
 TYPE_1__* gwsreader ; 
 TYPE_1__* gwswriter ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_1__* parsing_spinner ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void
FUNC15 (void)
{
#ifdef TCB_MEMHASH
  /* free malloc'd int values on the agent list */
  if (conf.list_agents)
    free_agent_list ();
#endif

  FUNC12 ();

  /* DASHBOARD */
  if (dash && !conf.output_stdout) {
    FUNC8 (dash);
    FUNC14 ();
  }

  /* GEOLOCATION */
#ifdef HAVE_GEOLOCATION
  geoip_free ();
#endif

  /* LOGGER */
  if (glog->pipe)
    FUNC2 (glog->pipe);
  FUNC10 (glog);
  FUNC3 (glog);

  /* INVALID REQUESTS */
  if (conf.invalid_requests_log) {
    FUNC0 (("Closing invalid requests log.\n"));
    FUNC13 ();
  }

  /* CONFIGURATION */
  FUNC9 ();
  FUNC5 ();
  if (conf.debug_log) {
    FUNC0 (("Bye.\n"));
    FUNC1 ();
  }

  /* clear spinner */
  FUNC3 (parsing_spinner);
  /* free colors */
  FUNC7 ();
  /* free cmd arguments */
  FUNC6 ();
  /* WebSocket writer */
  FUNC3 (gwswriter);
  /* WebSocket reader */
  FUNC3 (gwsreader);
}