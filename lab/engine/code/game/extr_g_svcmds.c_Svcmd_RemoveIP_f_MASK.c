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
typedef  int /*<<< orphan*/  str ;
struct TYPE_4__ {scalar_t__ mask; int compare; } ;
typedef  TYPE_1__ ipFilter_t ;
struct TYPE_5__ {scalar_t__ mask; int compare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* ipFilters ; 
 int numIPFilters ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

void FUNC5 (void)
{
	ipFilter_t	f;
	int			i;
	char		str[MAX_TOKEN_CHARS];

	if ( FUNC3() < 2 ) {
		FUNC0("Usage: removeip <ip-mask>\n");
		return;
	}

	FUNC4( 1, str, sizeof( str ) );

	if (!FUNC1 (str, &f))
		return;

	for (i=0 ; i<numIPFilters ; i++) {
		if (ipFilters[i].mask == f.mask	&&
			ipFilters[i].compare == f.compare) {
			ipFilters[i].compare = 0xffffffffu;
			FUNC0 ("Removed.\n");

			FUNC2();
			return;
		}
	}

	FUNC0 ( "Didn't find %s.\n", str );
}