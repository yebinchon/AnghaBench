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
typedef  int /*<<< orphan*/  db_hash_table_p ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* config_filename ; 
 int /*<<< orphan*/  config_reload_time ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  db_hash ; 
 int /*<<< orphan*/  db_hash_new ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 () ; 
 scalar_t__ need_reload_config ; 
 int /*<<< orphan*/  now ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC8 (int create_conn) {
  int res;
  need_reload_config = 0;

  fd[0] = FUNC6 (config_filename, O_RDONLY);
  if (fd[0] < 0) {
    FUNC4 (stderr, "cannot re-read config file %s: %m\n", config_filename);
    return -3;
  }

  res = FUNC5 ();
  if (res > 0 && verbosity > 0) {
    FUNC4 (stderr, "/etc/hosts changed, reloaded\n");
  }

  res = FUNC7 (db_hash_new, 4);

  FUNC1 (fd[0]);

  if (res < 0) {
    FUNC0 (db_hash_new);
    FUNC4 (stderr, "error while re-reading config file %s, new configuration NOT applied\n", config_filename);
    return res;
  }

  res = FUNC7 (db_hash_new, 3);

  if (res < 0) {
    FUNC0 (db_hash_new);
    FUNC4 (stderr, "error while re-reading config file %s, new configuration NOT applied\n", config_filename);
    return res;
  }

  res = FUNC7 (db_hash_new, 1);

  if (res < 0) {
    FUNC0 (db_hash_new);
    FUNC4 (stderr, "fatal error while re-reading config file %s\n", config_filename);
    FUNC3 (-res);
  }

  FUNC0 (db_hash);

  db_hash_table_p tmp = db_hash;
  db_hash = db_hash_new;
  db_hash_new = tmp;

  if (create_conn) {
    FUNC2 ();
  }

  config_reload_time = now;

  if (verbosity > 0) {
    FUNC4 (stderr, "configuration file %s re-read successfully, new configuration active\n", config_filename);
  }

  return 0;
}