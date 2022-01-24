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
struct TYPE_3__ {int /*<<< orphan*/  save_index; } ;

/* Variables and functions */
 int CACHE_FEATURE_ACCESS_QUERIES ; 
 int /*<<< orphan*/  NB_alloc ; 
 int /*<<< orphan*/  NB_max ; 
 int /*<<< orphan*/  NB_used ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  allow_save_index_without_counters ; 
 int /*<<< orphan*/  cache_engine ; 
 int cache_features_mask ; 
 TYPE_1__ cache_functions ; 
 int /*<<< orphan*/  cache_parse_function ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 int /*<<< orphan*/  disallow_save_index ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  maxconn ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rpc_methods ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double tl_aio_timeout ; 
 int /*<<< orphan*/  tl_parse_function ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (void) {
  int i;

  if (!(cache_features_mask & CACHE_FEATURE_ACCESS_QUERIES) && !allow_save_index_without_counters) {
    cache_functions.save_index = disallow_save_index;
  }

  tl_parse_function = cache_parse_function;
  tl_aio_timeout = 2.0;
  FUNC3 (&cache_engine, &cache_functions, &ct_rpc_server, &rpc_methods);

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 255)) {
      FUNC4 (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC0 (57);
    if (!FUNC1 ()) {
      break;
    }
    if (quit_steps && !--quit_steps) break;
  }
  FUNC2 (&cache_engine);
}