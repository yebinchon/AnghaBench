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
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_3__ {int /*<<< orphan*/  waterBubbleShader; } ;
struct TYPE_4__ {TYPE_1__ media; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,float,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,float,int) ; 
 char* FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 TYPE_2__ cgs ; 

int FUNC6 (int num)
{
	// const char *str;
	char *str;
	char *token;
	int type;
	vec3_t origin, origin2;
	int		i;
	float range = 0;
	int turb;
	int	numparticles;
	int	snum;
	
	str = (char *) FUNC0 (num);
	if (!str[0])
		return (0);
	
	// returns type 128 64 or 32
	token = FUNC3 (&str);
	type = FUNC5 (token);
	
	if (type == 1)
		range = 128;
	else if (type == 2)
		range = 64;
	else if (type == 3)
		range = 32;
	else if (type == 0)
		range = 256;
	else if (type == 4)
		range = 8;
	else if (type == 5)
		range = 16;
	else if (type == 6)
		range = 32;
	else if (type == 7)
		range = 64;


	for (i=0; i<3; i++)
	{
		token = FUNC3 (&str);
		origin[i] = FUNC4 (token);
	}

	for (i=0; i<3; i++)
	{
		token = FUNC3 (&str);
		origin2[i] = FUNC4 (token);
	}
		
	token = FUNC3 (&str);
	numparticles = FUNC5 (token);
	
	token = FUNC3 (&str);
	turb = FUNC5 (token);

	token = FUNC3 (&str);
	snum = FUNC5 (token);
	
	for (i=0; i<numparticles; i++)
	{
		if (type >= 4)
			FUNC1 (cgs.media.waterBubbleShader, origin, origin2, turb, range, snum);
		else
			FUNC2 (cgs.media.waterBubbleShader, origin, origin2, turb, range, snum);
	}

	return (1);
}