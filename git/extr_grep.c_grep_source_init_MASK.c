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
struct grep_source {int type; int /*<<< orphan*/ * identifier; int /*<<< orphan*/ * driver; scalar_t__ size; int /*<<< orphan*/ * buf; void* path; void* name; } ;
typedef  enum grep_source_type { ____Placeholder_grep_source_type } grep_source_type ;

/* Variables and functions */
#define  GREP_SOURCE_BUF 130 
#define  GREP_SOURCE_FILE 129 
#define  GREP_SOURCE_OID 128 
 int /*<<< orphan*/ * FUNC0 (void const*) ; 
 int /*<<< orphan*/ * FUNC1 (void const*) ; 
 void* FUNC2 (char const*) ; 

void FUNC3(struct grep_source *gs, enum grep_source_type type,
		      const char *name, const char *path,
		      const void *identifier)
{
	gs->type = type;
	gs->name = FUNC2(name);
	gs->path = FUNC2(path);
	gs->buf = NULL;
	gs->size = 0;
	gs->driver = NULL;

	switch (type) {
	case GREP_SOURCE_FILE:
		gs->identifier = FUNC1(identifier);
		break;
	case GREP_SOURCE_OID:
		gs->identifier = FUNC0(identifier);
		break;
	case GREP_SOURCE_BUF:
		gs->identifier = NULL;
		break;
	}
}