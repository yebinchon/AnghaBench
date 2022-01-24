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
struct timespec {unsigned short tv_sec; unsigned short tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int FUNC6 (unsigned char*,int) ; 
 unsigned short FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 long long FUNC12 () ; 
 int FUNC13 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int) ; 

__attribute__((used)) static void FUNC15 (const char *password_filename, int password_length) {
  unsigned char *a = FUNC2 (64 + password_length, 1);
  FUNC1 (a != NULL);
  long long r = FUNC12 ();
  struct timespec T;
  FUNC1 (FUNC3(CLOCK_REALTIME, &T) >= 0);
  FUNC9 (a, &T.tv_sec, 4);
  FUNC9 (a+4, &T.tv_nsec, 4);
  FUNC9 (a+8, &r, 8);
  unsigned short p = FUNC7 ();
  FUNC9 (a + 16, &p, 2);
  int s = FUNC6 (a + 18, 32) + 18;
  int fd = FUNC11 (password_filename, O_RDONLY);
  if (fd < 0) {
    FUNC8 ("Warning: fail to open password file - \"%s\", %m.\n", password_filename);
  } else {
    int l = FUNC13 (fd, a + s, password_length);
    if (l < 0) {
      FUNC8 ("Warning: fail to read password file - \"%s\", %m.\n", password_filename);
    } else {
      FUNC14 (1, "read %d bytes from password file.\n", l);
      s += l;
    }
    FUNC4 (fd);
  }
  FUNC0 (a, s);
  FUNC10 (a, 0, s);
  FUNC5 (a);
}