#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct object_entry {TYPE_1__ idx; } ;
typedef  int /*<<< orphan*/  output ;
struct TYPE_6__ {char const* buf; } ;
struct TYPE_5__ {scalar_t__ hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 TYPE_3__ command_buf ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct object_entry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const char *p)
{
	struct object_entry *oe;
	char output[GIT_MAX_HEXSZ + 2];

	/* get-mark SP <object> LF */
	if (*p != ':')
		FUNC1("Not a mark: %s", p);

	oe = FUNC2(FUNC4(p));
	if (!oe)
		FUNC1("Unknown mark: %s", command_buf.buf);

	FUNC5(output, sizeof(output), "%s\n", FUNC3(&oe->idx.oid));
	FUNC0(output, the_hash_algo->hexsz + 1);
}