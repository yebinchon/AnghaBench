#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 struct event_base* FUNC0 (struct event_base*) ; 
 int /*<<< orphan*/  dummy_free ; 
 int /*<<< orphan*/  dummy_malloc ; 
 int /*<<< orphan*/  dummy_realloc ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 struct event_base* FUNC2 (struct event_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_config*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_config*) ; 
 struct event_config* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct event_base*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct event_base *b = NULL;
	struct event_config *cfg = NULL;
	FUNC6(dummy_malloc, dummy_realloc, dummy_free);
	cfg = FUNC5();
	FUNC3(cfg, "Nonesuch");
	b = FUNC2(cfg);
	FUNC7(b);
	FUNC7(FUNC0(b));
end:
	if (cfg)
		FUNC4(cfg);
	if (b)
		FUNC1(b);
}