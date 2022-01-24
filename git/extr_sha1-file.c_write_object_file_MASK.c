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
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int MAX_HEADER_LEN ; 
 scalar_t__ FUNC0 (struct object_id*) ; 
 scalar_t__ FUNC1 (struct object_id*) ; 
 int FUNC2 (struct object_id*,char*,int,void const*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const*,unsigned long,char const*,struct object_id*,char*,int*) ; 

int FUNC4(const void *buf, unsigned long len, const char *type,
		      struct object_id *oid)
{
	char hdr[MAX_HEADER_LEN];
	int hdrlen = sizeof(hdr);

	/* Normally if we have it in the pack then we do not bother writing
	 * it out into .git/objects/??/?{38} file.
	 */
	FUNC3(buf, len, type, oid, hdr, &hdrlen);
	if (FUNC1(oid) || FUNC0(oid))
		return 0;
	return FUNC2(oid, hdr, hdrlen, buf, len, 0);
}