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
struct submodule_cache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * command; int /*<<< orphan*/  type; } ;
struct submodule {int recommend_shallow; int /*<<< orphan*/  gitmodules_oid; int /*<<< orphan*/ * branch; int /*<<< orphan*/ * ignore; int /*<<< orphan*/  fetch_recurse; TYPE_1__ update_strategy; int /*<<< orphan*/ * url; int /*<<< orphan*/ * path; int /*<<< orphan*/  name; } ;
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECURSE_SUBMODULES_NONE ; 
 int /*<<< orphan*/  SM_UPDATE_UNSPECIFIED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct submodule_cache*,struct submodule*) ; 
 struct submodule* FUNC1 (struct submodule_cache*,struct object_id const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 struct submodule* FUNC5 (int) ; 

__attribute__((used)) static struct submodule *FUNC6(struct submodule_cache *cache,
		const struct object_id *gitmodules_oid, const char *name)
{
	struct submodule *submodule;
	struct strbuf name_buf = STRBUF_INIT;

	submodule = FUNC1(cache, gitmodules_oid, name);
	if (submodule)
		return submodule;

	submodule = FUNC5(sizeof(*submodule));

	FUNC3(&name_buf, name);
	submodule->name = FUNC4(&name_buf, NULL);

	submodule->path = NULL;
	submodule->url = NULL;
	submodule->update_strategy.type = SM_UPDATE_UNSPECIFIED;
	submodule->update_strategy.command = NULL;
	submodule->fetch_recurse = RECURSE_SUBMODULES_NONE;
	submodule->ignore = NULL;
	submodule->branch = NULL;
	submodule->recommend_shallow = -1;

	FUNC2(&submodule->gitmodules_oid, gitmodules_oid);

	FUNC0(cache, submodule);

	return submodule;
}