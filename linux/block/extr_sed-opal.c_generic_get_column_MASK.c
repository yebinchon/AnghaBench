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

/* Variables and functions */
 int /*<<< orphan*/  OPAL_ENDCOLUMN ; 
 int /*<<< orphan*/  OPAL_ENDLIST ; 
 int /*<<< orphan*/  OPAL_ENDNAME ; 
 size_t OPAL_GET ; 
 int /*<<< orphan*/  OPAL_STARTCOLUMN ; 
 int /*<<< orphan*/  OPAL_STARTLIST ; 
 int /*<<< orphan*/  OPAL_STARTNAME ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct opal_dev*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/  parse_and_check_status ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev, const u8 *table,
			      u64 column)
{
	int err;

	err = FUNC2(dev, table, opalmethod[OPAL_GET]);

	FUNC1(&err, dev, OPAL_STARTLIST);

	FUNC1(&err, dev, OPAL_STARTNAME);
	FUNC1(&err, dev, OPAL_STARTCOLUMN);
	FUNC0(&err, dev, column);
	FUNC1(&err, dev, OPAL_ENDNAME);

	FUNC1(&err, dev, OPAL_STARTNAME);
	FUNC1(&err, dev, OPAL_ENDCOLUMN);
	FUNC0(&err, dev, column);
	FUNC1(&err, dev, OPAL_ENDNAME);

	FUNC1(&err, dev, OPAL_ENDLIST);

	if (err)
		return err;

	return FUNC3(dev, parse_and_check_status);
}