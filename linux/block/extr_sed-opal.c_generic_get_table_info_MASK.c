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
typedef  int /*<<< orphan*/  u64 ;
struct opal_dev {int dummy; } ;
typedef  enum opal_uid { ____Placeholder_opal_uid } opal_uid ;

/* Variables and functions */
 size_t OPAL_TABLE_TABLE ; 
 int OPAL_UID_LENGTH ; 
 int FUNC0 (struct opal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/ * opaluid ; 

__attribute__((used)) static int FUNC2(struct opal_dev *dev, enum opal_uid table,
				  u64 column)
{
	u8 uid[OPAL_UID_LENGTH];
	const unsigned int half = OPAL_UID_LENGTH/2;

	/* sed-opal UIDs can be split in two halves:
	 *  first:  actual table index
	 *  second: relative index in the table
	 * so we have to get the first half of the OPAL_TABLE_TABLE and use the
	 * first part of the target table as relative index into that table
	 */
	FUNC1(uid, opaluid[OPAL_TABLE_TABLE], half);
	FUNC1(uid+half, opaluid[table], half);

	return FUNC0(dev, uid, column);
}