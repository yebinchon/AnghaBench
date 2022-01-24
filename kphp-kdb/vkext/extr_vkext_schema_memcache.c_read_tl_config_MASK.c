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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long long MAX_TL_CONFIG_SIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,long long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 long long FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (long long) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 long long FUNC9 (int,char*,long long) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_config_name ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

int FUNC13 (const char *name) {
  int fd = FUNC8 (name, O_RDONLY);
//  fprintf (stderr, "fd = %d\n", fd);
  if (fd < 0) { return -1; }
  long long x = FUNC6 (fd, 0, SEEK_END);
  if (x < 0) { return -1; }
  if (x > MAX_TL_CONFIG_SIZE) {
    return -1;
  }
  if (verbosity >= 2) {
    FUNC4 (stderr, "File found. Name %s. size = %lld\n", name, x);
  }
  char *s = FUNC7 (x);
  FUNC1 (FUNC6 (fd, 0, SEEK_SET) == 0);
  FUNC1 (FUNC9 (fd, s, x) == x);
  FUNC2 (fd);
  FUNC3 (s, x);
  int res = FUNC10 ();
  FUNC5 (s);
  if (res > 0) {
    tl_config_name = FUNC12 (name);
    FUNC0 (FUNC11 (tl_config_name));
  }

  return res;
}