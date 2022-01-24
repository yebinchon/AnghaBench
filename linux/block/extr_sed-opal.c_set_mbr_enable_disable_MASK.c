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
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_ENDLIST ; 
 int /*<<< orphan*/  OPAL_ENDNAME ; 
 size_t OPAL_MBRCONTROL ; 
 int /*<<< orphan*/  OPAL_MBRENABLE ; 
 size_t OPAL_SET ; 
 int /*<<< orphan*/  OPAL_STARTLIST ; 
 int /*<<< orphan*/  OPAL_STARTNAME ; 
 int /*<<< orphan*/  OPAL_VALUES ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/ * opaluid ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev, void *data)
{
	u8 *mbr_en_dis = data;
	int err;

	err = FUNC1(dev, opaluid[OPAL_MBRCONTROL],
			opalmethod[OPAL_SET]);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_VALUES);
	FUNC0(&err, dev, OPAL_STARTLIST);
	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_MBRENABLE);
	FUNC0(&err, dev, *mbr_en_dis);
	FUNC0(&err, dev, OPAL_ENDNAME);
	FUNC0(&err, dev, OPAL_ENDLIST);
	FUNC0(&err, dev, OPAL_ENDNAME);

	if (err) {
		FUNC3("Error Building set MBR done command\n");
		return err;
	}

	return FUNC2(dev, parse_and_check_status);
}