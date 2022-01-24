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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ntlm_client ;
typedef  int /*<<< orphan*/  ntlm_buf ;

/* Variables and functions */
 size_t UINT16_MAX ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(
	ntlm_client *ntlm,
	ntlm_buf *out,
	size_t len,
	size_t offset)
{
	if (len > UINT16_MAX) {
		FUNC0(ntlm, "invalid string, too long");
		return false;
	}

	if (offset > UINT32_MAX) {
		FUNC0(ntlm, "invalid string, invalid offset");
		return false;
	}

	return FUNC1(ntlm, out, (uint16_t)len) &&
		FUNC1(ntlm, out, (uint16_t)len) &&
		FUNC2(ntlm, out, (uint32_t)offset);
}