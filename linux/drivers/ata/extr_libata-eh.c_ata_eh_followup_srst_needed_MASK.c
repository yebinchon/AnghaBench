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
struct ata_link {int flags; int /*<<< orphan*/  ap; } ;

/* Variables and functions */
 int ATA_LFLAG_NO_SRST ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct ata_link*) ; 
 scalar_t__ FUNC1 (struct ata_link*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_link *link, int rc)
{
	if ((link->flags & ATA_LFLAG_NO_SRST) || FUNC1(link))
		return 0;
	if (rc == -EAGAIN)
		return 1;
	if (FUNC2(link->ap) && FUNC0(link))
		return 1;
	return 0;
}