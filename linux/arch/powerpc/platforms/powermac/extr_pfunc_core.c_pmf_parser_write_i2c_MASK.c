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
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pmf_cmd*,struct pmf_handlers*,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmf_cmd*) ; 
 void* FUNC4 (struct pmf_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_i2c ; 

__attribute__((used)) static int FUNC5(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
	u32 bytes = FUNC3(cmd);
	const void *blob = FUNC4(cmd, bytes);

	FUNC1("pmf: write_i2c(bytes: %ud) ...\n", bytes);
	FUNC0("pmf:   data: \n", blob, bytes);

	FUNC2(write_i2c, cmd, h, bytes, blob);
}