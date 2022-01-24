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
struct seq_file {struct drbd_connection* private; } ;
struct drbd_connection {int /*<<< orphan*/  r_timing_details; int /*<<< orphan*/  r_cb_nr; int /*<<< orphan*/  w_timing_details; int /*<<< orphan*/  w_cb_nr; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *ignored)
{
	struct drbd_connection *connection = m->private;
	unsigned long jif = jiffies;

	/* BUMP me if you change the file format/content/presentation */
	FUNC1(m, "v: %u\n\n", 0);

	FUNC2(m, "n\tage\tcallsite\tfn\n");
	FUNC0(m, "worker", connection->w_cb_nr, connection->w_timing_details, jif);
	FUNC0(m, "receiver", connection->r_cb_nr, connection->r_timing_details, jif);
	return 0;
}