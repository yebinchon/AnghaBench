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
struct walker_data {struct alt_base* alt; } ;
struct walker {struct walker_data* data; } ;
struct alt_base {char* base; struct alt_base* next; } ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct walker*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct walker*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct walker*,struct alt_base*,unsigned char*) ; 

__attribute__((used)) static int FUNC5(struct walker *walker, unsigned char *hash)
{
	struct walker_data *data = walker->data;
	struct alt_base *altbase = data->alt;

	if (!FUNC2(walker, hash))
		return 0;
	while (altbase) {
		if (!FUNC4(walker, altbase, hash))
			return 0;
		FUNC1(walker, data->alt->base);
		altbase = altbase->next;
	}
	return FUNC0("Unable to find %s under %s", FUNC3(hash),
		     data->alt->base);
}