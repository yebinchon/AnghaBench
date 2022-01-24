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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uiOpenTypeFeatures ;
struct feature {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct feature*,int /*<<< orphan*/  const*) ; 
 struct feature FUNC1 (char,char,char,char) ; 

int FUNC2(const uiOpenTypeFeatures *otf, char a, char b, char c, char d, uint32_t *value)
{
	const struct feature *f;
	struct feature key;

	key = FUNC1(a, b, c, d);
	f = (const struct feature *) FUNC0(&key, otf);
	if (f == NULL)
		return 0;
	*value = f->value;
	return 1;
}