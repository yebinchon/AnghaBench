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
struct tpm_buf {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*) ; 
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int /*<<< orphan*/  TPM_FLUSHSPECIFIC_SIZE ; 
 int /*<<< orphan*/  TPM_ORD_FLUSHSPECIFIC ; 
 int /*<<< orphan*/  TPM_RT_KEY ; 
 int /*<<< orphan*/  TPM_TAG_RQU_COMMAND ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tpm_buf *tb, uint32_t handle)
{
	FUNC0(tb);
	FUNC1(tb, TPM_TAG_RQU_COMMAND);
	FUNC2(tb, TPM_FLUSHSPECIFIC_SIZE);
	FUNC2(tb, TPM_ORD_FLUSHSPECIFIC);
	FUNC2(tb, handle);
	FUNC2(tb, TPM_RT_KEY);

	return FUNC3(tb->data, MAX_BUF_SIZE);
}