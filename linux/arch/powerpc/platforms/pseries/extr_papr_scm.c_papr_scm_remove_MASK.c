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
struct platform_device {int dummy; } ;
struct papr_scm_priv {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct papr_scm_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct papr_scm_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct papr_scm_priv* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct papr_scm_priv *p = FUNC3(pdev);

	FUNC2(p->bus);
	FUNC0(p);
	FUNC1(p);

	return 0;
}