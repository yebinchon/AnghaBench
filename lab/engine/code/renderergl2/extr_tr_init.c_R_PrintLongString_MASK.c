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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 TYPE_1__ ri ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC3(const char *string) {
	char buffer[1024];
	const char *p;
	int size = FUNC1(string);

	p = string;
	while(size > 0)
	{
		FUNC0(buffer, p, sizeof (buffer) );
		ri.Printf( PRINT_ALL, "%s", buffer );
		p += 1023;
		size -= 1023;
	}
}