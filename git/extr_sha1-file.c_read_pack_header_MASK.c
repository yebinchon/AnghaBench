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
struct pack_header {scalar_t__ hdr_signature; int /*<<< orphan*/  hdr_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACK_SIGNATURE ; 
 int PH_ERROR_EOF ; 
 int PH_ERROR_PACK_SIGNATURE ; 
 int PH_ERROR_PROTOCOL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct pack_header*,int) ; 

int FUNC3(int fd, struct pack_header *header)
{
	if (FUNC2(fd, header, sizeof(*header)) != sizeof(*header))
		/* "eof before pack header was fully read" */
		return PH_ERROR_EOF;

	if (header->hdr_signature != FUNC0(PACK_SIGNATURE))
		/* "protocol error (pack signature mismatch detected)" */
		return PH_ERROR_PACK_SIGNATURE;
	if (!FUNC1(header->hdr_version))
		/* "protocol error (pack version unsupported)" */
		return PH_ERROR_PROTOCOL;
	return 0;
}