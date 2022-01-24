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
typedef  int /*<<< orphan*/  uint32_t ;
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct pack_idx_option {int dummy; } ;
struct pack_idx_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,struct pack_idx_entry**,int /*<<< orphan*/ ,struct pack_idx_option*,unsigned char*) ; 

void FUNC8(struct strbuf *name_buffer,
			 const char *pack_tmp_name,
			 struct pack_idx_entry **written_list,
			 uint32_t nr_written,
			 struct pack_idx_option *pack_idx_opts,
			 unsigned char hash[])
{
	const char *idx_tmp_name;
	int basename_len = name_buffer->len;

	if (FUNC0(pack_tmp_name))
		FUNC1("unable to make temporary pack file readable");

	idx_tmp_name = FUNC7(NULL, written_list, nr_written,
				      pack_idx_opts, hash);
	if (FUNC0(idx_tmp_name))
		FUNC1("unable to make temporary index file readable");

	FUNC5(name_buffer, "%s.pack", FUNC3(hash));

	if (FUNC4(pack_tmp_name, name_buffer->buf))
		FUNC1("unable to rename temporary pack file");

	FUNC6(name_buffer, basename_len);

	FUNC5(name_buffer, "%s.idx", FUNC3(hash));
	if (FUNC4(idx_tmp_name, name_buffer->buf))
		FUNC1("unable to rename temporary index file");

	FUNC6(name_buffer, basename_len);

	FUNC2((void *)idx_tmp_name);
}