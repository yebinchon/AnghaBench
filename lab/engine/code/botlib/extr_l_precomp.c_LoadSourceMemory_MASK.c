#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  definehash; scalar_t__ skip; int /*<<< orphan*/ * indentstack; int /*<<< orphan*/ * defines; int /*<<< orphan*/ * tokens; TYPE_2__* scriptstack; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ source_t ;
struct TYPE_8__ {int /*<<< orphan*/ * next; } ;
typedef  TYPE_2__ script_t ;
typedef  int /*<<< orphan*/  define_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int DEFINEHASHSIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_2__* FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

source_t *FUNC7(char *ptr, int length, char *name)
{
	source_t *source;
	script_t *script;

	FUNC5();

	script = FUNC3(ptr, length, name);
	if (!script) return NULL;
	script->next = NULL;

	source = (source_t *) FUNC2(sizeof(source_t));
	FUNC0(source, 0, sizeof(source_t));

	FUNC6(source->filename, name, sizeof(source->filename));
	source->scriptstack = script;
	source->tokens = NULL;
	source->defines = NULL;
	source->indentstack = NULL;
	source->skip = 0;

#if DEFINEHASHING
	source->definehash = GetClearedMemory(DEFINEHASHSIZE * sizeof(define_t *));
#endif //DEFINEHASHING
	FUNC4(source);
	return source;
}