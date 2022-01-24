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
struct mc_config {scalar_t__* config_md5_hex; int /*<<< orphan*/  config_bytes; scalar_t__ config_loaded_at; } ;

/* Variables and functions */
 struct mc_config* CurConf ; 
 struct mc_config* NextConf ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct mc_config*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  config_buff ; 
 int /*<<< orphan*/  config_bytes ; 
 char* config_filename ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ need_reload_config ; 
 scalar_t__ now ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mc_config*,struct mc_config*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mc_config*,struct mc_config*) ; 
 int FUNC11 (struct mc_config*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__* FUNC13 (int) ; 

int FUNC14 (int create_conn) {
  int res;
  need_reload_config = 0;

  fd[0] = FUNC7 (config_filename, O_RDONLY);
  if (fd[0] < 0) {
    FUNC4 (stderr, "cannot re-read config file %s: %m\n", config_filename);
    return -1;
  }

  res = FUNC5 ();
  if (res > 0 && verbosity > 0) {
    FUNC4 (stderr, "/etc/hosts changed, reloaded\n");
  }

  res = FUNC8 (NextConf, CurConf, 0);

  FUNC1 (fd[0]);

  //  clear_config (NextConf);
  
  if (res < 0) {
    FUNC12 (0, "error while re-reading config file %s, new configuration NOT applied\n", config_filename);
    return res;
  }

  res = FUNC11 (NextConf);
  if (res < 0) {
    FUNC12 (0, "error while re-reading config file %s, new configuration NOT applied: cannot open listening ports\n", config_filename);
    return res;
  }

  res = FUNC8 (NextConf, CurConf, 1);

  if (res < 0) {
    FUNC0 (NextConf, 0);
    FUNC12 (0, "fatal error while re-reading config file %s\n", config_filename);
    FUNC3 (-res);
  }

  if (create_conn) {
    FUNC10 (NextConf, CurConf);
  }

  struct mc_config *tmp = CurConf;
  CurConf = NextConf;
  NextConf = tmp;

  FUNC0 (NextConf, 1);

  if (create_conn) {
    FUNC2 ();
  }

  CurConf->config_loaded_at = now ? now : FUNC9 (0);
  CurConf->config_bytes = config_bytes;
  CurConf->config_md5_hex = FUNC13 (33);
  FUNC6 (config_buff, config_bytes, CurConf->config_md5_hex);
  CurConf->config_md5_hex[32] = 0;

  FUNC12 (0, "configuration file %s re-read successfully, new configuration active\n", config_filename);

  return 0;
}