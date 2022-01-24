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
struct ata_port {int /*<<< orphan*/  flags; struct ata_host* host; } ;
struct ata_host {struct ata_port const** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct ata_port const*) ; 

__attribute__((used)) static unsigned int FUNC4(const struct ata_port *ap)
{
	const struct ata_host *host = ap->host;
	unsigned int nr_ports = FUNC3(ap);
	unsigned int i;

	for (i = 0; i < nr_ports && host->ports[i] != ap; ++i)
		;
	FUNC0(i >= nr_ports);
	return FUNC2(i, FUNC1(ap->flags));
}