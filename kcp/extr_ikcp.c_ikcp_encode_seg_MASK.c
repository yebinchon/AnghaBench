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
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  una; int /*<<< orphan*/  sn; int /*<<< orphan*/  ts; scalar_t__ wnd; scalar_t__ frg; scalar_t__ cmd; int /*<<< orphan*/  conv; } ;
typedef  int /*<<< orphan*/  IUINT8 ;
typedef  int /*<<< orphan*/  IUINT16 ;
typedef  TYPE_1__ IKCPSEG ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(char *ptr, const IKCPSEG *seg)
{
	ptr = FUNC1(ptr, seg->conv);
	ptr = FUNC2(ptr, (IUINT8)seg->cmd);
	ptr = FUNC2(ptr, (IUINT8)seg->frg);
	ptr = FUNC0(ptr, (IUINT16)seg->wnd);
	ptr = FUNC1(ptr, seg->ts);
	ptr = FUNC1(ptr, seg->sn);
	ptr = FUNC1(ptr, seg->una);
	ptr = FUNC1(ptr, seg->len);
	return ptr;
}