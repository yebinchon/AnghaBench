#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  pattern ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_2__* archives; int /*<<< orphan*/  lang; } ;
typedef  TYPE_1__ lmo_catalog_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_2__ lmo_archive_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int PATH_MAX ; 
 TYPE_1__* _lmo_active_catalog ; 
 TYPE_1__* _lmo_catalogs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 TYPE_2__* FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,...) ; 

int FUNC10(const char *lang, const char *dir)
{
	DIR *dh = NULL;
	char pattern[16];
	char path[PATH_MAX];
	struct dirent *de = NULL;

	lmo_archive_t *ar = NULL;
	lmo_catalog_t *cat = NULL;

	if (!FUNC3(lang))
		return 0;

	if (!dir || !(dh = FUNC7(dir)))
		goto err;

	if (!(cat = FUNC5(sizeof(*cat))))
		goto err;

	FUNC6(cat, 0, sizeof(*cat));

	FUNC9(cat->lang, sizeof(cat->lang), "%s", lang);
	FUNC9(pattern, sizeof(pattern), "*.%s.lmo", lang);

	while ((de = FUNC8(dh)) != NULL)
	{
		if (!FUNC1(pattern, de->d_name, 0))
		{
			FUNC9(path, sizeof(path), "%s/%s", dir, de->d_name);
			ar = FUNC4(path);

			if (ar)
			{
				ar->next = cat->archives;
				cat->archives = ar;
			}
		}
	}

	FUNC0(dh);

	cat->next = _lmo_catalogs;
	_lmo_catalogs = cat;

	if (!_lmo_active_catalog)
		_lmo_active_catalog = cat;

	return 0;

err:
	if (dh) FUNC0(dh);
	if (cat) FUNC2(cat);

	return -1;
}