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
struct wakeup_source {char const* name; int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wakeup_source*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 struct wakeup_source* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wakeup_ida ; 

struct wakeup_source *FUNC5(const char *name)
{
	struct wakeup_source *ws;
	const char *ws_name;
	int id;

	ws = FUNC4(sizeof(*ws), GFP_KERNEL);
	if (!ws)
		goto err_ws;

	ws_name = FUNC3(name, GFP_KERNEL);
	if (!ws_name)
		goto err_name;
	ws->name = ws_name;

	id = FUNC0(&wakeup_ida, GFP_KERNEL);
	if (id < 0)
		goto err_id;
	ws->id = id;

	return ws;

err_id:
	FUNC2(ws->name);
err_name:
	FUNC1(ws);
err_ws:
	return NULL;
}