#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_3__ {long pad; int /*<<< orphan*/  crc; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ header_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (long,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC5(void* mem, const char *magic, const char* version)
{
	header_t* header = mem;
	FUNC3(header, 0, sizeof(header_t));

	FUNC2(header->magic, magic, MAGIC_LENGTH);
	FUNC4(header->version, version, sizeof(header->version));
	header->crc = FUNC1(FUNC0(0L, (unsigned char *)header,
				sizeof(header_t) - 2 * sizeof(u_int32_t)));
	header->pad = 0L;
}