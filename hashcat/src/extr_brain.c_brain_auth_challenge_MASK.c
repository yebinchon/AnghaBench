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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCFILE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

u32 FUNC12 (void)
{
  FUNC9 (FUNC11 (NULL));

  u32 val = FUNC8 (); // just a fallback value

  #if defined (_WIN)

  // from

  HCRYPTPROV hCryptProv;

  if (CryptAcquireContext (&hCryptProv, NULL, NULL, PROV_RSA_FULL, 0) == true)
  {
    if (CryptGenRandom (hCryptProv, sizeof (val), (BYTE *) &val) == true)
    {
      // all good
    }
    else
    {
      brain_logging (stderr, 0, "CryptGenRandom: %d\n", (int) GetLastError ());

      return val;
    }

    CryptReleaseContext (hCryptProv, 0);
  }
  else
  {
    brain_logging (stderr, 0, "CryptAcquireContext: %d\n", (int) GetLastError ());

    return val;
  }

  #else

  static const char *urandom = "/dev/urandom";

  HCFILE fp;

  if (FUNC6 (&fp, urandom, "rb") == false)
  {
    FUNC4 (stderr, 0, "%s: %s\n", urandom, FUNC10 (errno));

    return val;
  }

  if (FUNC7 (&val, sizeof (val), 1, &fp) != 1)
  {
    FUNC4 (stderr, 0, "%s: %s\n", urandom, FUNC10 (errno));

    FUNC5 (&fp);

    return val;
  }

  FUNC5 (&fp);

  #endif

  return val;
}