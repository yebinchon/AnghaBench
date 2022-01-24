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
typedef  int /*<<< orphan*/  shm_filename ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SHARED_MEMORY_SIZE ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 scalar_t__* SHM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ max_process_number ; 
 int now ; 
 int port ; 
 int shm_no ; 
 scalar_t__ FUNC4 (char*,int,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (char*,int,char*,int,int,int,int) ; 

int FUNC7 (void) {
  int i;
  shm_no = (max_process_number > 0) ? max_process_number : -1;
  FUNC0 (shm_no > 0);
  for (i = 0; i < shm_no; i++) {
    char shm_filename[128];
    /* For portable use, name should have an initial slash (/) and contain no embedded slashes. */
    int l = FUNC6 (shm_filename, sizeof (shm_filename) - 2, "/img%d_%d_%d_%d", FUNC2 (), now, port, i);
    FUNC0 (l < (int) sizeof (shm_filename));
    shm_filename[l] = 0;
    SHM[i] = FUNC4 (shm_filename, O_RDWR | O_CREAT | O_EXCL, 0640);
    if (SHM[i] < 0) {
      FUNC3 ("Couldn't create share memory object %s\n%m\n", shm_filename);
      shm_no = i;
      return 0;
    }
    FUNC1 (SHM[i], MAX_SHARED_MEMORY_SIZE);
    if (FUNC5 (shm_filename) < 0) {
      FUNC3 ("shm_unlink (%s) failed. %m\n", shm_filename);
      shm_no = i;
      return 0;
    }
  }
  return 1;
}