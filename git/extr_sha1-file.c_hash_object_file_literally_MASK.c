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

/* Variables and functions */
 unsigned int HASH_WRITE_OBJECT ; 
 int MAX_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct object_id*) ; 
 scalar_t__ FUNC2 (struct object_id*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (struct object_id*,char*,int,void const*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void const*,unsigned long,char const*,struct object_id*,char*,int*) ; 
 char* FUNC6 (int) ; 

int FUNC7(const void *buf, unsigned long len,
			       const char *type, struct object_id *oid,
			       unsigned flags)
{
	char *header;
	int hdrlen, status = 0;

	/* type string, SP, %lu of the length plus NUL must fit this */
	hdrlen = FUNC3(type) + MAX_HEADER_LEN;
	header = FUNC6(hdrlen);
	FUNC5(buf, len, type, oid, header, &hdrlen);

	if (!(flags & HASH_WRITE_OBJECT))
		goto cleanup;
	if (FUNC2(oid) || FUNC1(oid))
		goto cleanup;
	status = FUNC4(oid, header, hdrlen, buf, len, 0);

cleanup:
	FUNC0(header);
	return status;
}