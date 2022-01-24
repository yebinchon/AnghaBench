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
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 int blksize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* stats_port ; 
 int /*<<< orphan*/  stderr ; 
 int timeout ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5 (int val) {
  switch (val) {
  case 'B':
    blksize = FUNC1 (optarg);
    FUNC0 (blksize >= 8 && blksize <= 65464);
    break;
  case 'P':
    stats_port = FUNC1 (optarg);
    break;
  case 'R':
    if (FUNC3 (optarg) < 0) {
      FUNC2 (stderr, "Illegal -R %s option\n", optarg);
      FUNC4 ();
      break;
    }
  case 'T':
    timeout = FUNC1 (optarg);
    FUNC0 (timeout >= 1 && timeout <= 255);
    break;
  default:
    FUNC2 (stderr, "Unimplemented option '%c' (%d)\n", (char) val, val);
    return -1;
  }
  return 0;
}