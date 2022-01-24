#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ lmo_entry_t ;
struct TYPE_7__ {char* mmap; struct TYPE_7__* next; } ;
typedef  TYPE_2__ lmo_archive_t ;
struct TYPE_8__ {TYPE_2__* archives; } ;

/* Variables and functions */
 TYPE_5__* _lmo_active_catalog ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const char *key, int keylen, char **out, int *outlen)
{
	uint32_t hash;
	lmo_entry_t *e;
	lmo_archive_t *ar;

	if (!key || !_lmo_active_catalog)
		return -2;

	hash = FUNC0(key, keylen);

	for (ar = _lmo_active_catalog->archives; ar; ar = ar->next)
	{
		if ((e = FUNC1(ar, hash)) != NULL)
		{
			*out = ar->mmap + FUNC2(e->offset);
			*outlen = FUNC2(e->length);
			return 0;
		}
	}

	return -1;
}