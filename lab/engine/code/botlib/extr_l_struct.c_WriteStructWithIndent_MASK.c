#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  size; TYPE_2__* fields; } ;
typedef  TYPE_1__ structdef_t ;
struct TYPE_5__ {char* name; int offset; int type; int maxarray; TYPE_1__* substruct; } ;
typedef  TYPE_2__ fielddef_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FT_ARRAY ; 
#define  FT_CHAR 132 
#define  FT_FLOAT 131 
#define  FT_INT 130 
#define  FT_STRING 129 
#define  FT_STRUCT 128 
 int FT_TYPE ; 
 int /*<<< orphan*/  MAX_STRINGFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC3(FILE *fp, structdef_t *def, char *structure, int indent)
{
	int i, num;
	void *p;
	fielddef_t *fd;

	if (!FUNC1(fp, indent)) return qfalse;
	if (FUNC2(fp, "{\r\n") < 0) return qfalse;

	indent++;
	for (i = 0; def->fields[i].name; i++)
	{
		fd = &def->fields[i];
		if (!FUNC1(fp, indent)) return qfalse;
		if (FUNC2(fp, "%s\t", fd->name) < 0) return qfalse;
		p = (void *)(structure + fd->offset);
		if (fd->type & FT_ARRAY)
		{
			num = fd->maxarray;
			if (FUNC2(fp, "{") < 0) return qfalse;
		} //end if
		else
		{
			num = 1;
		} //end else
		while(num-- > 0)
		{
			switch(fd->type & FT_TYPE)
			{
				case FT_CHAR:
				{
					if (FUNC2(fp, "%d", *(char *) p) < 0) return qfalse;
					p = (char *) p + sizeof(char);
					break;
				} //end case
				case FT_INT:
				{
					if (FUNC2(fp, "%d", *(int *) p) < 0) return qfalse;
					p = (char *) p + sizeof(int);
					break;
				} //end case
				case FT_FLOAT:
				{
					if (!FUNC0(fp, *(float *)p)) return qfalse;
					p = (char *) p + sizeof(float);
					break;
				} //end case
				case FT_STRING:
				{
					if (FUNC2(fp, "\"%s\"", (char *) p) < 0) return qfalse;
					p = (char *) p + MAX_STRINGFIELD;
					break;
				} //end case
				case FT_STRUCT:
				{
					if (!FUNC3(fp, fd->substruct, structure, indent)) return qfalse;
					p = (char *) p + fd->substruct->size;
					break;
				} //end case
			} //end switch
			if (fd->type & FT_ARRAY)
			{
				if (num > 0)
				{
					if (FUNC2(fp, ",") < 0) return qfalse;
				} //end if
				else
				{
					if (FUNC2(fp, "}") < 0) return qfalse;
				} //end else
			} //end if
		} //end while
		if (FUNC2(fp, "\r\n") < 0) return qfalse;
	} //end for
	indent--;

	if (!FUNC1(fp, indent)) return qfalse;
	if (FUNC2(fp, "}\r\n") < 0) return qfalse;
	return qtrue;
}