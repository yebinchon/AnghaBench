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
 int MAX_MAP_USERS ; 
 long long Map ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int* UMap ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long long FUNC5 (long) ; 
 char* map_filename ; 
 long map_fsize ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,long long,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC8 (void) {
  int map_fd = FUNC6 (map_filename, O_RDONLY);
  if (map_fd < 0) {
    FUNC3 (stderr, "cannot open user names file %s: %m\n", map_filename);
    FUNC2 (1);
  }
  map_fsize = FUNC4 (map_fd, 0, SEEK_END);
  FUNC0 (map_fsize >= 0 && map_fsize == (long) map_fsize);
  FUNC0 (map_fsize >= MAX_MAP_USERS * 4);
  Map = FUNC5 (map_fsize);
  FUNC0 (Map);
  UMap = (unsigned *) Map;

  FUNC0 (FUNC4 (map_fd, 0, SEEK_SET) == 0);
  long long rd = 0;
  while (rd < map_fsize) {
    int s = map_fsize - rd < (1 << 30) ? map_fsize - rd : (1 << 30);
    FUNC0 (FUNC7 (map_fd, Map + rd, s) == s);
    rd += s;
  }
  FUNC1 (map_fd);

  int i;
  FUNC0 (UMap[0] == MAX_MAP_USERS * 4);
  for (i = 1; i < MAX_MAP_USERS; i++) {
    FUNC0 (UMap[i-1] <= UMap[i]);
  }
  FUNC0 (UMap[MAX_MAP_USERS-1] <= map_fsize);
  if (verbosity > 0) {
    FUNC3 (stderr, "successfully loaded user names file %s, size %ld\n", map_filename, map_fsize);
  }

  return 0;
}