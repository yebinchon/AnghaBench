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
typedef  int /*<<< orphan*/  u8 ;
struct opal_dev {size_t pos; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 size_t SHORT_ATOM_LEN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct opal_dev*,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct opal_dev*,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct opal_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static u8 *FUNC4(int *err, struct opal_dev *cmd, size_t len)
{
	size_t header_len = 1;
	bool is_short_atom = true;

	if (len & ~SHORT_ATOM_LEN_MASK) {
		header_len = 2;
		is_short_atom = false;
	}

	if (!FUNC2(err, cmd, header_len + len)) {
		FUNC3("Error adding bytestring: end of buffer.\n");
		return NULL;
	}

	if (is_short_atom)
		FUNC1(cmd, true, false, len);
	else
		FUNC0(cmd, true, false, len);

	return &cmd->cmd[cmd->pos];
}