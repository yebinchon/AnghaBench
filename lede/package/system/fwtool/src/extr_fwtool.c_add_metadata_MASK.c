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
struct fwimage_trailer {int size; int /*<<< orphan*/  type; } ;
struct fwimage_header {int dummy; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FWIMAGE_INFO ; 
 int /*<<< orphan*/  METADATA_MAXLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fwimage_trailer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fwimage_trailer*) ; 
 int /*<<< orphan*/  firmware_file ; 
 int /*<<< orphan*/  FUNC2 (struct fwimage_header*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metadata_file ; 
 int /*<<< orphan*/  FUNC3 (struct fwimage_trailer*,struct fwimage_header*,int) ; 

__attribute__((used)) static int
FUNC4(struct fwimage_trailer *tr)
{
	struct fwimage_header hdr = {};

	tr->type = FWIMAGE_INFO;
	tr->size = sizeof(hdr) + sizeof(*tr);

	FUNC3(tr, &hdr, sizeof(hdr));
	FUNC2(&hdr, sizeof(hdr), 1, firmware_file);

	if (FUNC0(metadata_file, firmware_file, tr, METADATA_MAXLEN))
		return 1;

	FUNC1(firmware_file, tr);

	return 0;
}