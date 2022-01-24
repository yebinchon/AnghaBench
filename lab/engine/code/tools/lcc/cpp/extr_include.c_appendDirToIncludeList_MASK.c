#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_2__ {char* file; int always; } ;

/* Variables and functions */
 int /*<<< orphan*/  FATAL ; 
 int NINCLUDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* includelist ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void FUNC4( char *dir )
{
	int i;
	char *fqdir;

	fqdir = (char *)FUNC1( (uchar *)includelist[NINCLUDE-1].file, 256, 0 );
	FUNC2( fqdir, "/" );
	FUNC2( fqdir, dir );

	//avoid adding it more than once
	for (i=NINCLUDE-2; i>=0; i--) {
		if (includelist[i].file &&
				!FUNC3 (includelist[i].file, fqdir)) {
			return;
		}
	}

	for (i=NINCLUDE-2; i>=0; i--) {
		if (includelist[i].file==NULL) {
			includelist[i].always = 1;
			includelist[i].file = fqdir;
			break;
		}
	}
	if (i<0)
		FUNC0(FATAL, "Too many -I directives");
}