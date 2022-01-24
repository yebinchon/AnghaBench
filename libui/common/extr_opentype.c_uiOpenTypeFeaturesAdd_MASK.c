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
typedef  void* uint32_t ;
struct TYPE_4__ {int len; int cap; struct feature* data; } ;
typedef  TYPE_1__ uiOpenTypeFeatures ;
struct feature {char a; char b; char c; char d; void* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  featurecmp ; 
 scalar_t__ FUNC1 (struct feature*,TYPE_1__*) ; 
 struct feature FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (struct feature*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct feature*,int /*<<< orphan*/ ,char*) ; 

void FUNC5(uiOpenTypeFeatures *otf, char a, char b, char c, char d, uint32_t value)
{
	struct feature *f;
	struct feature key;

	// replace existing value if any
	key = FUNC2(a, b, c, d);
	f = (struct feature *) FUNC1(&key, otf);
	if (f != NULL) {
		f->value = value;
		return;
	}

	// if we got here, the tag is new
	if (otf->len == otf->cap) {
		otf->cap *= 2;
		otf->data = (struct feature *) FUNC4(otf->data, FUNC0(otf->cap), "struct feature[]");
	}
	f = otf->data + otf->len;
	f->a = a;
	f->b = b;
	f->c = c;
	f->d = d;
	f->value = value;
	// LONGTERM qsort here is overkill
	otf->len++;
	FUNC3(otf->data, otf->len, sizeof (struct feature), featurecmp);
}