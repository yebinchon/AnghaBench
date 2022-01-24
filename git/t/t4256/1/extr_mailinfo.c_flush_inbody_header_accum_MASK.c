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
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct mailinfo {TYPE_1__ inbody_header_accum; int /*<<< orphan*/  s_hdr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mailinfo*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct mailinfo *mi)
{
	if (!mi->inbody_header_accum.len)
		return;
	if (!FUNC1(mi, &mi->inbody_header_accum, mi->s_hdr_data, 0))
		FUNC0("inbody_header_accum, if not empty, must always contain a valid in-body header");
	FUNC2(&mi->inbody_header_accum);
}