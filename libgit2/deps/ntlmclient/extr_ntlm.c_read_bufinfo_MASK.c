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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC2(
	uint16_t *out_len,
	uint32_t *out_offset,
	ntlm_client *ntlm,
	ntlm_buf *message)
{
	uint16_t allocated;

	return FUNC0(out_len, ntlm, message) &&
		FUNC0(&allocated, ntlm, message) &&
		FUNC1(out_offset, ntlm, message);
}