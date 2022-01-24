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
struct TYPE_4__ {scalar_t__ fd; struct TYPE_4__* buf; scalar_t__ hdr; int /*<<< orphan*/  multi; int /*<<< orphan*/  curl; } ;
typedef  TYPE_1__ kurl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(kurl_t *ku)
{
	if (ku == 0) return 0;
	if (ku->fd < 0) {
		FUNC3(ku->multi, ku->curl);
		FUNC1(ku->curl);
		FUNC2(ku->multi);
		if (ku->hdr) FUNC4(ku->hdr);
	} else FUNC0(ku->fd);
	FUNC5(ku->buf);
	FUNC5(ku);
	return 0;
}