#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {long status; void* result; void* buf_size; void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ validate_flash_data ; 

__attribute__((used)) static inline void FUNC4(void)
{
	long ret;
	void *buf = validate_flash_data.buf;
	__be32 size = FUNC2(validate_flash_data.buf_size);
	__be32 result;

	ret = FUNC3(FUNC0(buf), &size, &result);

	validate_flash_data.status = ret;
	validate_flash_data.buf_size = FUNC1(size);
	validate_flash_data.result = FUNC1(result);
}