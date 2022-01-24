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
 char const* DEFAULT_PWD_FILE ; 
 int MAX_PWD_LEN ; 
 int MIN_PWD_LEN ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int aes_initialized ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 long FUNC2 () ; 
 int FUNC3 (char const*,int) ; 
 scalar_t__ pwd_buf ; 
 int pwd_len ; 
 scalar_t__ rand_buf ; 
 int FUNC4 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC6 (const char *filename) {
  int h = FUNC3 ("/dev/random", O_RDONLY | O_NONBLOCK);
  int r = 0;

  if (h >= 0) {
    r = FUNC4 (h, rand_buf, 16);
    if (r > 0 && verbosity > 1) {
      FUNC1 (stderr, "added %d bytes of real entropy to the AES security key\n", r);
    }
    FUNC0 (h);
  }

  if (r < 16) {
    h = FUNC3 ("/dev/urandom", O_RDONLY);
    if (h < 0) {
      pwd_len = 0;
      return -1;
    }
    int s = FUNC4 (h, rand_buf + r, 16 - r);
    if (r + s != 16) {
      pwd_len = 0;
      return -1;
    }
    FUNC0 (h);
  }

  *(long *) rand_buf ^= FUNC2();

  FUNC5 (*(long *)rand_buf);

  h = FUNC3 (filename ? filename : DEFAULT_PWD_FILE, O_RDONLY);
  if (h < 0) {
    return -1;
  }

  r = FUNC4 (h, pwd_buf, MAX_PWD_LEN + 1);

  FUNC0 (h);

  if (r < MIN_PWD_LEN || r > MAX_PWD_LEN) {
    return -1;
  }

  pwd_len = r;

  if (verbosity > 0) {
    FUNC1 (stderr, "loaded password file %s\n", filename ? filename : DEFAULT_PWD_FILE);
  }

  aes_initialized = 1;

  return 1;
}