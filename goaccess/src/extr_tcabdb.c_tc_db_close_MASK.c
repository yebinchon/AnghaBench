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
struct TYPE_2__ {int /*<<< orphan*/  keep_db_files; } ;
typedef  int /*<<< orphan*/  TCADB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6 (TCADB * adb, char *dbname)
{
  if (adb == NULL)
    return 1;

  /* close the database */
  if (!FUNC3 (adb))
    FUNC0 ("Unable to close DB: %s", dbname);

  /* delete the object */
  FUNC4 (adb);

#ifdef TCB_BTREE
  /* remove database file */
  if (!conf.keep_db_files && !tcremovelink (dbname))
    LOG_DEBUG (("Unable to remove DB: %s\n", dbname));
#endif
  FUNC2 (dbname);

  return 0;
}