#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct walker_data {int got_alternates; TYPE_1__* alt; } ;
struct walker {struct walker_data* data; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  prefetch; int /*<<< orphan*/  fetch_ref; int /*<<< orphan*/  fetch; scalar_t__ corrupt_object_found; } ;
struct TYPE_2__ {char* base; int /*<<< orphan*/ * next; int /*<<< orphan*/ * packs; scalar_t__ got_indices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct walker*,int (*) (void*)) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  fetch ; 
 int /*<<< orphan*/  fetch_ref ; 
 scalar_t__ fill_active_slot ; 
 int /*<<< orphan*/  prefetch ; 
 int FUNC1 (char*) ; 
 void* FUNC2 (int) ; 
 char* FUNC3 (char const*) ; 

struct walker *FUNC4(const char *url)
{
	char *s;
	struct walker_data *data = FUNC2(sizeof(struct walker_data));
	struct walker *walker = FUNC2(sizeof(struct walker));

	data->alt = FUNC2(sizeof(*data->alt));
	data->alt->base = FUNC3(url);
	for (s = data->alt->base + FUNC1(data->alt->base) - 1; *s == '/'; --s)
		*s = 0;

	data->alt->got_indices = 0;
	data->alt->packs = NULL;
	data->alt->next = NULL;
	data->got_alternates = -1;

	walker->corrupt_object_found = 0;
	walker->fetch = fetch;
	walker->fetch_ref = fetch_ref;
	walker->prefetch = prefetch;
	walker->cleanup = cleanup;
	walker->data = data;

#ifdef USE_CURL_MULTI
	add_fill_function(walker, (int (*)(void *)) fill_active_slot);
#endif

	return walker;
}