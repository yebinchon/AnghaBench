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
typedef  int /*<<< orphan*/  const u64 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  XXH64_state_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int FBUFSZ ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char*) ; 
 size_t FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

u64 FUNC10 (const char *filename)
{
  XXH64_state_t *state = FUNC0 ();

  FUNC3 (state, 0);

  #define FBUFSZ 8192

  char buf[FBUFSZ];

  HCFILE fp;

  FUNC7 (&fp, filename, "rb");

  while (!FUNC6 (&fp))
  {
    FUNC9 (buf, 0, sizeof (buf));

    const size_t nread = FUNC8 (buf, 1, FBUFSZ, &fp);

    FUNC4 (state, buf, nread);
  }

  FUNC5 (&fp);

  const u64 hash = FUNC1 (state);

  FUNC2 (state);

  return hash;
}