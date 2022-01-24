#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; struct TYPE_3__* next; } ;
typedef  TYPE_1__ epair_t ;
struct TYPE_4__ {TYPE_1__* epairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SIN_MAX_MAP_ENTSTRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* entities ; 
 int num_entities ; 
 char* sin_dentdata ; 
 int sin_entdatasize ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6 (void)
{
	char	*buf, *end;
	epair_t	*ep;
	char	line[2048];
	int		i;
	char	key[1024], value[1024];

	buf = sin_dentdata;
	end = buf;
	*end = 0;
	
	for (i=0 ; i<num_entities ; i++)
	{
		ep = entities[i].epairs;
		if (!ep)
			continue;	// ent got removed
		
		FUNC3 (end,"{\n");
		end += 2;
				
		for (ep = entities[i].epairs ; ep ; ep=ep->next)
		{
			FUNC4 (key, ep->key);
			FUNC1 (key);
			FUNC4 (value, ep->value);
			FUNC1 (value);
				
			FUNC2 (line, "\"%s\" \"%s\"\n", key, value);
			FUNC3 (end, line);
			end += FUNC5(line);
		}
		FUNC3 (end,"}\n");
		end += 2;

		if (end > buf + SIN_MAX_MAP_ENTSTRING)
			FUNC0 ("Entity text too long");
	}
	sin_entdatasize = end - buf + 1;
}