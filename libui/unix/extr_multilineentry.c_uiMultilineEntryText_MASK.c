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
struct TYPE_3__ {int /*<<< orphan*/  textbuf; } ;
typedef  TYPE_1__ uiMultilineEntry ;
typedef  int /*<<< orphan*/  GtkTextIter ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 

char *FUNC5(uiMultilineEntry *e)
{
	GtkTextIter start, end;
	char *tret, *out;

	FUNC2(e->textbuf, &start);
	FUNC1(e->textbuf, &end);
	tret = FUNC3(e->textbuf, &start, &end, TRUE);
	// theoretically we could just return tret because uiUnixStrdupText() is just g_strdup(), but if that ever changes we can't, so let's do it this way to be safe
	out = FUNC4(tret);
	FUNC0(tret);
	return out;
}