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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 size_t GIT_OID_HEXSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t const) ; 
 size_t FUNC2 (char const*) ; 

int FUNC3(
	git_oid *oid, const char **buffer_out,
	const char *buffer_end, const char *header)
{
	const size_t sha_len = GIT_OID_HEXSZ;
	const size_t header_len = FUNC2(header);

	const char *buffer = *buffer_out;

	if (buffer + (header_len + sha_len + 1) > buffer_end)
		return -1;

	if (FUNC1(buffer, header, header_len) != 0)
		return -1;

	if (buffer[header_len + sha_len] != '\n')
		return -1;

	if (FUNC0(oid, buffer + header_len) < 0)
		return -1;

	*buffer_out = buffer + (header_len + sha_len + 1);

	return 0;
}