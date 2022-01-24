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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  mp_file ;
typedef  int /*<<< orphan*/  hashcat_ctx_t ;
typedef  int /*<<< orphan*/  cs_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 size_t FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,size_t const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int) ; 
 size_t const FUNC6 (char const*) ; 
 size_t FUNC7 (char*,size_t const) ; 

__attribute__((used)) static int FUNC8 (hashcat_ctx_t *hashcat_ctx, cs_t *mp_sys, cs_t *mp_usr, const char *buf, const u32 userindex)
{
  HCFILE fp;

  if (FUNC3 (&fp, buf, "rb") == false)
  {
    const int rc = FUNC5 (hashcat_ctx, buf, FUNC6 (buf), mp_sys, mp_usr, userindex, 1);

    if (rc == -1) return -1;
  }
  else
  {
    char mp_file[1024];

    const size_t nread = FUNC4 (mp_file, 1, sizeof (mp_file) - 1, &fp);

    if (!FUNC2 (&fp))
    {
      FUNC0 (hashcat_ctx, "%s: Custom charset file is too large.", buf);

      FUNC1 (&fp);

      return -1;
    }

    FUNC1 (&fp);

    if (nread == 0)
    {
      FUNC0 (hashcat_ctx, "%s: Custom charset file is empty.", buf);

      return -1;
    }

    mp_file[nread] = 0;

    const size_t len = FUNC7 (mp_file, nread);

    if (len == 0)
    {
      FUNC0 (hashcat_ctx, "%s: Custom charset file is corrupted.", buf);

      return -1;
    }

    const int rc = FUNC5 (hashcat_ctx, mp_file, len, mp_sys, mp_usr, userindex, 0);

    if (rc == -1) return -1;
  }

  return 0;
}