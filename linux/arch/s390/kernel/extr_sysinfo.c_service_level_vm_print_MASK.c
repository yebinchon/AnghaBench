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
struct service_level {int dummy; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void FUNC5(struct seq_file *m,
				   struct service_level *slr)
{
	char *query_buffer, *str;

	query_buffer = FUNC2(1024, GFP_KERNEL | GFP_DMA);
	if (!query_buffer)
		return;
	FUNC0("QUERY CPLEVEL", query_buffer, 1024, NULL);
	str = FUNC4(query_buffer, '\n');
	if (str)
		*str = 0;
	FUNC3(m, "VM: %s\n", query_buffer);
	FUNC1(query_buffer);
}