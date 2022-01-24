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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  rpc_status ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 scalar_t__ FUNC0 (char**,char*,int,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

rpc_status FUNC7(char **to_uuid) {
  if (!to_uuid) {
    return RPC_ERROR;
  }
#ifdef __MACH__
  *to_uuid = (char *)malloc(37);
  uuid_t uuid;
  uuid_generate(uuid);
  uuid_unparse_upper(uuid, *to_uuid);
#else
  // see stackoverflow.com/questions/2174768/clinuxgenerating-uuids-in-linux
  static bool seeded = false;
  if (!seeded) {
    seeded = true;
    FUNC3(FUNC4(NULL));
  }
  if (FUNC0(to_uuid, "%x%x-%x-%x-%x-%x%x%x",
      FUNC2(), FUNC2(), FUNC2(),
      ((FUNC2() & 0x0fff) | 0x4000),
      FUNC2() % 0x3fff + 0x8000,
      FUNC2(), FUNC2(), FUNC2()) < 0) {
    return RPC_ERROR;  // asprintf failed
  }
#endif
  return RPC_SUCCESS;
}