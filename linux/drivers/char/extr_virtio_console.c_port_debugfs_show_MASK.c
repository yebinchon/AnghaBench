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
struct seq_file {struct port* private; } ;
struct TYPE_4__ {char* vtermno; } ;
struct TYPE_3__ {char* bytes_sent; char* bytes_received; char* bytes_discarded; } ;
struct port {char* name; char* guest_connected; char* host_connected; char* outvq_full; TYPE_2__ cons; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct port*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *data)
{
	struct port *port = s->private;

	FUNC1(s, "name: %s\n", port->name ? port->name : "");
	FUNC1(s, "guest_connected: %d\n", port->guest_connected);
	FUNC1(s, "host_connected: %d\n", port->host_connected);
	FUNC1(s, "outvq_full: %d\n", port->outvq_full);
	FUNC1(s, "bytes_sent: %lu\n", port->stats.bytes_sent);
	FUNC1(s, "bytes_received: %lu\n", port->stats.bytes_received);
	FUNC1(s, "bytes_discarded: %lu\n", port->stats.bytes_discarded);
	FUNC1(s, "is_console: %s\n",
		   FUNC0(port) ? "yes" : "no");
	FUNC1(s, "console_vtermno: %u\n", port->cons.vtermno);

	return 0;
}