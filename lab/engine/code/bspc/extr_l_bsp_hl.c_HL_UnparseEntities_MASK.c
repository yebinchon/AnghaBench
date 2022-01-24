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
struct TYPE_3__ {char* key; char* value; struct TYPE_3__* next; } ;
typedef  TYPE_1__ epair_t ;
struct TYPE_4__ {TYPE_1__* epairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HL_MAX_MAP_ENTSTRING ; 
 TYPE_2__* entities ; 
 char* hl_dentdata ; 
 int hl_entdatasize ; 
 int num_entities ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4 (void)
{
	char *buf, *end;
	epair_t *ep;
	char line[2048];
	int i;
	
	buf = hl_dentdata;
	end = buf;
	*end = 0;
	
	for (i=0 ; i<num_entities ; i++)
	{
		ep = entities[i].epairs;
		if (!ep)
			continue;	// ent got removed
		
		FUNC2 (end,"{\n");
		end += 2;
				
		for (ep = entities[i].epairs ; ep ; ep=ep->next)
		{
			FUNC1 (line, "\"%s\" \"%s\"\n", ep->key, ep->value);
			FUNC2 (end, line);
			end += FUNC3(line);
		}
		FUNC2 (end,"}\n");
		end += 2;

		if (end > buf + HL_MAX_MAP_ENTSTRING)
			FUNC0 ("Entity text too long");
	}
	hl_entdatasize = end - buf + 1;
}