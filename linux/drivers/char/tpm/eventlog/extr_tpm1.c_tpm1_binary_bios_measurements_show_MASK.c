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
struct tcpa_event {int pcr_index; int event_type; int event_size; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpa_event*,struct tcpa_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct tcpa_event *event = v;
	struct tcpa_event temp_event;
	char *temp_ptr;
	int i;

	FUNC1(&temp_event, event, sizeof(struct tcpa_event));

	/* convert raw integers for endianness */
	temp_event.pcr_index = FUNC0(event->pcr_index);
	temp_event.event_type = FUNC0(event->event_type);
	temp_event.event_size = FUNC0(event->event_size);

	temp_ptr = (char *) &temp_event;

	for (i = 0; i < (sizeof(struct tcpa_event) - 1) ; i++)
		FUNC2(m, temp_ptr[i]);

	temp_ptr = (char *) v;

	for (i = (sizeof(struct tcpa_event) - 1);
	     i < (sizeof(struct tcpa_event) + temp_event.event_size); i++)
		FUNC2(m, temp_ptr[i]);

	return 0;

}