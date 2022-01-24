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
struct seq_file {struct regmap* private; } ;
struct regmap {int max_register; scalar_t__ reg_stride; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct regmap*,int) ; 
 scalar_t__ FUNC2 (struct regmap*,int) ; 
 scalar_t__ FUNC3 (struct regmap*,int) ; 
 scalar_t__ FUNC4 (struct regmap*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int,int,char,char,char,char) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *ignored)
{
	struct regmap *map = s->private;
	int i, reg_len;

	reg_len = FUNC0(map->max_register);

	for (i = 0; i <= map->max_register; i += map->reg_stride) {
		/* Ignore registers which are neither readable nor writable */
		if (!FUNC2(map, i) && !FUNC4(map, i))
			continue;

		/* Format the register */
		FUNC5(s, "%.*x: %c %c %c %c\n", reg_len, i,
			   FUNC2(map, i) ? 'y' : 'n',
			   FUNC4(map, i) ? 'y' : 'n',
			   FUNC3(map, i) ? 'y' : 'n',
			   FUNC1(map, i) ? 'y' : 'n');
	}

	return 0;
}