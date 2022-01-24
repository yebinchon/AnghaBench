#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t rm_eo; scalar_t__ rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int REG_STARTEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,char const*,size_t,TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC2(const regex_t *preg, const char *buf, size_t size,
			      size_t nmatch, regmatch_t pmatch[], int eflags)
{
	FUNC0(nmatch > 0 && pmatch);
	pmatch[0].rm_so = 0;
	pmatch[0].rm_eo = size;
	return FUNC1(preg, buf, nmatch, pmatch, eflags | REG_STARTEND);
}