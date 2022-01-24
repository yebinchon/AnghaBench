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
typedef  int /*<<< orphan*/  uiOpenTypeFeatures ;
struct TYPE_3__ {int /*<<< orphan*/ * Features; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ uiAttributeSpec ;

/* Variables and functions */
 int /*<<< orphan*/  area ; 
 int /*<<< orphan*/ * attrstr ; 
 int /*<<< orphan*/  nullFeatures ; 
 int /*<<< orphan*/  textEntry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiAttributeFeatures ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	char *text;
	uiOpenTypeFeatures *otf;
	uiAttributeSpec spec;

	if (attrstr != NULL)
		FUNC5(attrstr);

	text = FUNC4(textEntry);
	attrstr = FUNC8(text);
	FUNC7(text);

	if (!FUNC3(nullFeatures)) {
		otf = FUNC9();
		// TODO
		spec.Type = uiAttributeFeatures;
		spec.Features = otf;
		FUNC2(attrstr, &spec,
			0, FUNC1(attrstr));
		// and uiAttributedString copied otf
		FUNC6(otf);
	}

	FUNC0(area);
}