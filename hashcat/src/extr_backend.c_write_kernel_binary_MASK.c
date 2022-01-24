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
typedef  int /*<<< orphan*/  hashcat_ctx_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7 (hashcat_ctx_t *hashcat_ctx, char *kernel_file, char *binary, size_t binary_size)
{
  if (binary_size > 0)
  {
    HCFILE fp;

    if (FUNC3 (&fp, kernel_file, "wb") == false)
    {
      FUNC0 (hashcat_ctx, "%s: %s", kernel_file, FUNC6 (errno));

      return false;
    }

    if (FUNC5 (&fp) == -1)
    {
      FUNC1 (&fp);

      FUNC0 (hashcat_ctx, "%s: %s", kernel_file, FUNC6 (errno));

      return false;
    }

    FUNC4 (binary, sizeof (char), binary_size, &fp);

    FUNC2 (&fp);

    FUNC1 (&fp);
  }

  return true;
}