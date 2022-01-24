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
struct ftm_quaddec {int dummy; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTM_SC ; 
 int /*<<< orphan*/  FTM_SC_PS_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_quaddec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct counter_device *counter,
				     struct counter_count *count,
				     size_t *cnt_mode)
{
	struct ftm_quaddec *ftm = counter->priv;
	uint32_t scflags;

	FUNC1(ftm, FTM_SC, &scflags);

	*cnt_mode = FUNC0(FTM_SC_PS_MASK, scflags);

	return 0;
}