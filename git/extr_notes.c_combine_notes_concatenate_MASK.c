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
typedef  struct object_id const object_id ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  blob_type ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*,struct object_id const*) ; 
 char* FUNC4 (struct object_id const*,int*,unsigned long*) ; 
 int FUNC5 (char*,unsigned long,int /*<<< orphan*/ ,struct object_id const*) ; 
 scalar_t__ FUNC6 (unsigned long) ; 

int FUNC7(struct object_id *cur_oid,
			      const struct object_id *new_oid)
{
	char *cur_msg = NULL, *new_msg = NULL, *buf;
	unsigned long cur_len, new_len, buf_len;
	enum object_type cur_type, new_type;
	int ret;

	/* read in both note blob objects */
	if (!FUNC1(new_oid))
		new_msg = FUNC4(new_oid, &new_type, &new_len);
	if (!new_msg || !new_len || new_type != OBJ_BLOB) {
		FUNC0(new_msg);
		return 0;
	}
	if (!FUNC1(cur_oid))
		cur_msg = FUNC4(cur_oid, &cur_type, &cur_len);
	if (!cur_msg || !cur_len || cur_type != OBJ_BLOB) {
		FUNC0(cur_msg);
		FUNC0(new_msg);
		FUNC3(cur_oid, new_oid);
		return 0;
	}

	/* we will separate the notes by two newlines anyway */
	if (cur_msg[cur_len - 1] == '\n')
		cur_len--;

	/* concatenate cur_msg and new_msg into buf */
	buf_len = cur_len + 2 + new_len;
	buf = (char *) FUNC6(buf_len);
	FUNC2(buf, cur_msg, cur_len);
	buf[cur_len] = '\n';
	buf[cur_len + 1] = '\n';
	FUNC2(buf + cur_len + 2, new_msg, new_len);
	FUNC0(cur_msg);
	FUNC0(new_msg);

	/* create a new blob object from buf */
	ret = FUNC5(buf, buf_len, blob_type, cur_oid);
	FUNC0(buf);
	return ret;
}