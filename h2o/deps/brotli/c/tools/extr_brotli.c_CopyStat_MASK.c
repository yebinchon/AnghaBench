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
typedef  int /*<<< orphan*/  uid_t ;
struct utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
struct stat {int st_mode; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct utimbuf*) ; 

__attribute__((used)) static void FUNC7(const char* input_path, const char* output_path) {
  struct stat statbuf;
  struct utimbuf times;
  int res;
  if (input_path == 0 || output_path == 0) {
    return;
  }
  if (FUNC4(input_path, &statbuf) != 0) {
    return;
  }
  times.actime = statbuf.st_atime;
  times.modtime = statbuf.st_mtime;
  FUNC6(output_path, &times);
  res = FUNC1(output_path, statbuf.st_mode & (S_IRWXU | S_IRWXG | S_IRWXO));
  if (res != 0) {
    FUNC3(stderr, "setting access bits failed for [%s]: %s\n",
            FUNC0(output_path), FUNC5(errno));
  }
  res = FUNC2(output_path, (uid_t)-1, statbuf.st_gid);
  if (res != 0) {
    FUNC3(stderr, "setting group failed for [%s]: %s\n",
            FUNC0(output_path), FUNC5(errno));
  }
  res = FUNC2(output_path, statbuf.st_uid, (gid_t)-1);
  if (res != 0) {
    FUNC3(stderr, "setting user failed for [%s]: %s\n",
            FUNC0(output_path), FUNC5(errno));
  }
}