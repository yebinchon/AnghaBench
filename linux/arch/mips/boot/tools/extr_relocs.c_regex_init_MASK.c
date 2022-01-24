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
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  regex_sym_kernel ; 
 int /*<<< orphan*/  sym_regex_c ; 

__attribute__((used)) static void FUNC3(void)
{
	char errbuf[128];
	int err;

	err = FUNC1(&sym_regex_c, regex_sym_kernel,
			REG_EXTENDED|REG_NOSUB);

	if (err) {
		FUNC2(err, &sym_regex_c, errbuf, sizeof(errbuf));
		FUNC0("%s", errbuf);
	}
}