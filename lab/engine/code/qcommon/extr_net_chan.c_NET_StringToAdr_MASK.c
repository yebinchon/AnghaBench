#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netadrtype_t ;
struct TYPE_5__ {void* port; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ netadr_t ;
typedef  int /*<<< orphan*/  base ;

/* Variables and functions */
 void* FUNC0 (short) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  NA_BAD ; 
 int /*<<< orphan*/  NA_LOOPBACK ; 
 short PORT_SERVER ; 
 int FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

int FUNC8( const char *s, netadr_t *a, netadrtype_t family )
{
	char	base[MAX_STRING_CHARS], *search;
	char	*port = NULL;

	if (!FUNC7 (s, "localhost")) {
		FUNC1 (a, 0, sizeof(*a));
		a->type = NA_LOOPBACK;
// as NA_LOOPBACK doesn't require ports report port was given.
		return 1;
	}

	FUNC3( base, s, sizeof( base ) );
	
	if(*base == '[' || FUNC2(base, ':') > 1)
	{
		// This is an ipv6 address, handle it specially.
		search = FUNC6(base, ']');
		if(search)
		{
			*search = '\0';
			search++;

			if(*search == ':')
				port = search + 1;
		}
		
		if(*base == '[')
			search = base + 1;
		else
			search = base;
	}
	else
	{
		// look for a port number
		port = FUNC6( base, ':' );
		
		if ( port ) {
			*port = '\0';
			port++;
		}
		
		search = base;
	}

	if(!FUNC4(search, a, family))
	{
		a->type = NA_BAD;
		return 0;
	}

	if(port)
	{
		a->port = FUNC0((short) FUNC5(port));
		return 1;
	}
	else
	{
		a->port = FUNC0(PORT_SERVER);
		return 2;
	}
}