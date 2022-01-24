#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* dbg; } ;
typedef  TYPE_2__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_4__ {int /*<<< orphan*/  irep; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 char* FUNC6 (char const*,char) ; 

char*
FUNC7(mrb_state *mrb, mrdb_state *mrdb, const char *srcpath, const char *filename)
{
  int i;
  FILE *fp;
  const char *search_path[3];
  char *path = NULL;
  const char *srcname = FUNC6(filename, '/');

  if (srcname) srcname++;
  else srcname = filename;

  search_path[0] = srcpath;
  search_path[1] = FUNC1(mrb, FUNC4(mrdb->dbg->irep, 0));
  search_path[2] = ".";

  for (i = 0; i < 3; i++) {
    if (search_path[i] == NULL) {
      continue;
    }

    if ((path = FUNC0(mrb, search_path[i], srcname)) == NULL) {
      continue;
    }

    if ((fp = FUNC3(path, "rb")) == NULL) {
      FUNC5(mrb, path);
      path = NULL;
      continue;
    }
    FUNC2(fp);
    break;
  }

  FUNC5(mrb, (void *)search_path[1]);

  return path;
}