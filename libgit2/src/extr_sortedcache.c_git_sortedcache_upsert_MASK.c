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
struct TYPE_3__ {size_t item_path_offset; int /*<<< orphan*/  map; int /*<<< orphan*/  items; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ git_sortedcache ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 size_t FUNC6 (char const*) ; 

int FUNC7(void **out, git_sortedcache *sc, const char *key)
{
	size_t keylen, itemlen;
	int error = 0;
	char *item_key;
	void *item;

	if ((item = FUNC2(sc->map, key)) != NULL)
		goto done;

	keylen  = FUNC6(key);
	itemlen = sc->item_path_offset + keylen + 1;
	itemlen = (itemlen + 7) & ~7;

	if ((item = FUNC0(&sc->pool, itemlen)) == NULL) {
		/* don't use GIT_ERROR_CHECK_ALLOC b/c of lock */
		error = -1;
		goto done;
	}

	/* one strange thing is that even if the vector or hash table insert
	 * fail, there is no way to free the pool item so we just abandon it
	 */

	item_key = ((char *)item) + sc->item_path_offset;
	FUNC5(item_key, key, keylen);

	if ((error = FUNC3(sc->map, item_key, item)) < 0)
		goto done;

	if ((error = FUNC4(&sc->items, item)) < 0)
		FUNC1(sc->map, item_key);

done:
	if (out)
		*out = !error ? item : NULL;
	return error;
}