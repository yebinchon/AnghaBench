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
 int FUNC0 (unsigned char*,int) ; 
 int FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC5 (unsigned char*,int) ; 
 unsigned short FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,...) ; 
 long long FUNC8 () ; 

__attribute__((used)) static int FUNC9 (unsigned char key[32], unsigned char iv[32]) {
  unsigned char a[64];
  long long r = FUNC8 ();
  struct timespec T;
  FUNC3 (FUNC4(CLOCK_REALTIME, &T) >= 0);
  FUNC7 (a, &T.tv_sec, 4);
  FUNC7 (a+4, &T.tv_nsec, 4);
  FUNC7 (a+8, &r, 8);
  unsigned short p = FUNC6 ();
  FUNC7 (a + 16, &p, 2);
  int s = FUNC5 (a + 18, 32);
  FUNC2 (a, s + 18);
  FUNC3 (FUNC0 (key, 32));
  FUNC3 (FUNC1 (iv, 32));
  /*
  memcpy (a + 18, "ejudge was hacked", 17);
  int m = 18 + 17;
  unsigned salt[2] = {0x44af03bf, 0x2b515cb7};
  int i = EVP_BytesToKey (EVP_aes_256_cbc(), EVP_sha1(), (unsigned char *) salt, a, m, 128, key, iv);
  assert (i == 32);
  */
  return 0;
}