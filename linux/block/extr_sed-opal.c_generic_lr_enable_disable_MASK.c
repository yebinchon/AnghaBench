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
 int OPAL_ENDLIST ; 
 int OPAL_ENDNAME ; 
 int OPAL_READLOCKED ; 
 int OPAL_READLOCKENABLED ; 
 size_t OPAL_SET ; 
 int OPAL_STARTLIST ; 
 int OPAL_STARTNAME ; 
 int OPAL_VALUES ; 
 int OPAL_WRITELOCKED ; 
 int OPAL_WRITELOCKENABLED ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 

__attribute__((used)) static int FUNC2(struct opal_dev *dev,
				     u8 *uid, bool rle, bool wle,
				     bool rl, bool wl)
{
	int err;

	err = FUNC1(dev, uid, opalmethod[OPAL_SET]);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_VALUES);
	FUNC0(&err, dev, OPAL_STARTLIST);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_READLOCKENABLED);
	FUNC0(&err, dev, rle);
	FUNC0(&err, dev, OPAL_ENDNAME);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_WRITELOCKENABLED);
	FUNC0(&err, dev, wle);
	FUNC0(&err, dev, OPAL_ENDNAME);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_READLOCKED);
	FUNC0(&err, dev, rl);
	FUNC0(&err, dev, OPAL_ENDNAME);

	FUNC0(&err, dev, OPAL_STARTNAME);
	FUNC0(&err, dev, OPAL_WRITELOCKED);
	FUNC0(&err, dev, wl);
	FUNC0(&err, dev, OPAL_ENDNAME);

	FUNC0(&err, dev, OPAL_ENDLIST);
	FUNC0(&err, dev, OPAL_ENDNAME);

	return err;
}