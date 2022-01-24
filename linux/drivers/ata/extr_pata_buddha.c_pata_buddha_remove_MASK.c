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
struct zorro_dev {int /*<<< orphan*/  dev; } ;
struct ata_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 struct ata_host* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct zorro_dev *z)
{
	struct ata_host *host = FUNC1(&z->dev);

	FUNC0(host);
}