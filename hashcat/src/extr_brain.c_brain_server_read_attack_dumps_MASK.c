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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct dirent {char* d_name; } ;
struct TYPE_3__ {size_t attack_cnt; int /*<<< orphan*/ * attack_buf; } ;
typedef  TYPE_1__ brain_server_dbs_t ;
typedef  int /*<<< orphan*/  brain_server_db_attack_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char*) ; 

bool FUNC11 (brain_server_dbs_t *brain_server_dbs, const char *path)
{
  brain_server_dbs->attack_cnt = 0;

  if (FUNC4 (path) == -1)
  {
    FUNC0 (stderr, 0, "%s: %s\n", path, FUNC9 (errno));

    return false;
  }

  DIR *dirp = FUNC7 (path);

  if (dirp == NULL)
  {
    FUNC0 (stderr, 0, "%s: %s\n", path, FUNC9 (errno));

    return false;
  }

  struct dirent *entry = NULL;

  while ((entry = FUNC8 (dirp)) != NULL)
  {
    char *file = entry->d_name;

    const size_t len = FUNC10 (file);

    if (len != 19) continue;

    if (file[ 0] != 'b') continue;
    if (file[ 1] != 'r') continue;
    if (file[ 2] != 'a') continue;
    if (file[ 3] != 'i') continue;
    if (file[ 4] != 'n') continue;
    if (file[ 5] != '.') continue;

    if (file[14] != '.') continue;
    if (file[15] != 'a') continue;
    if (file[16] != 'd') continue;
    if (file[17] != 'm') continue;
    if (file[18] != 'p') continue;

    const u32 brain_attack = FUNC3 (FUNC6 ((const u8 *) file + 6));

    brain_server_db_attack_t *brain_server_db_attack = &brain_server_dbs->attack_buf[brain_server_dbs->attack_cnt];

    FUNC1 (brain_server_db_attack, brain_attack);

    if (FUNC2 (brain_server_db_attack, file) == false) continue;

    brain_server_dbs->attack_cnt++;
  }

  FUNC5 (dirp);

  return true;
}