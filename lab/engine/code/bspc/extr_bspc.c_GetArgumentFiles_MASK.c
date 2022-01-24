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
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ quakefile_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

quakefile_t *FUNC3(int argc, char *argv[], int *i, char *ext)
{
	quakefile_t *qfiles, *lastqf, *qf;
	int j;
	char buf[1024];

	qfiles = NULL;
	lastqf = NULL;
	for (; (*i)+1 < argc && argv[(*i)+1][0] != '-'; (*i)++)
	{
		FUNC1(buf, argv[(*i)+1]);
		for (j = FUNC2(buf)-1; j >= FUNC2(buf)-4; j--)
			if (buf[j] == '.') break;
		if (j >= FUNC2(buf)-4)
			FUNC1(&buf[j+1], ext);
		qf = FUNC0(buf);
		if (!qf) continue;
		if (lastqf) lastqf->next = qf;
		else qfiles = qf;
		lastqf = qf;
		while(lastqf->next) lastqf = lastqf->next;
	} //end for
	return qfiles;
}