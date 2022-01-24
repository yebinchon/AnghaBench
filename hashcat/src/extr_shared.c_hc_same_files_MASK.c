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
struct stat {scalar_t__ st_blocks; scalar_t__ st_blksize; scalar_t__ STAT_NANOSECONDS_ACCESS_TIME; scalar_t__ st_atime; scalar_t__ st_rdev; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_nlink; scalar_t__ st_mode; } ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC4 (struct stat*,struct stat*,int) ; 

bool FUNC5 (char *file1, char *file2)
{
  if ((file1 != NULL) && (file2 != NULL))
  {
    struct stat tmpstat_file1;
    struct stat tmpstat_file2;

    int do_check = 0;

    HCFILE fp;

    if (FUNC3 (&fp, file1, "r") == true)
    {
      if (FUNC0 (FUNC2 (&fp), &tmpstat_file1))
      {
        FUNC1 (&fp);

        return false;
      }

      FUNC1 (&fp);

      do_check++;
    }

    if (FUNC3 (&fp, file2, "r") == true)
    {
      if (FUNC0 (FUNC2 (&fp), &tmpstat_file2))
      {
        FUNC1 (&fp);

        return false;
      }

      FUNC1 (&fp);

      do_check++;
    }

    if (do_check == 2)
    {
      tmpstat_file1.st_mode     = 0;
      tmpstat_file1.st_nlink    = 0;
      tmpstat_file1.st_uid      = 0;
      tmpstat_file1.st_gid      = 0;
      tmpstat_file1.st_rdev     = 0;
      tmpstat_file1.st_atime    = 0;

      #if defined (STAT_NANOSECONDS_ACCESS_TIME)
      tmpstat_file1.STAT_NANOSECONDS_ACCESS_TIME = 0;
      #endif

      #if defined (_POSIX)
      tmpstat_file1.st_blksize  = 0;
      tmpstat_file1.st_blocks   = 0;
      #endif

      tmpstat_file2.st_mode     = 0;
      tmpstat_file2.st_nlink    = 0;
      tmpstat_file2.st_uid      = 0;
      tmpstat_file2.st_gid      = 0;
      tmpstat_file2.st_rdev     = 0;
      tmpstat_file2.st_atime    = 0;

      #if defined (STAT_NANOSECONDS_ACCESS_TIME)
      tmpstat_file2.STAT_NANOSECONDS_ACCESS_TIME = 0;
      #endif

      #if defined (_POSIX)
      tmpstat_file2.st_blksize  = 0;
      tmpstat_file2.st_blocks   = 0;
      #endif

      if (FUNC4 (&tmpstat_file1, &tmpstat_file2, sizeof (struct stat)) == 0)
      {
        return true;
      }
    }
  }

  return false;
}