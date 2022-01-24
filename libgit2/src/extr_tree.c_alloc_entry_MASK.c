#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {char* filename; scalar_t__ filename_len; void* oid; } ;
typedef  TYPE_1__ git_tree_entry ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 int GIT_OID_RAWSZ ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_1__* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static git_tree_entry *FUNC5(const char *filename, size_t filename_len, const git_oid *id)
{
	git_tree_entry *entry = NULL;
	size_t tree_len;

	FUNC1(filename_len);

	if (FUNC0(&tree_len, sizeof(git_tree_entry), filename_len) ||
	    FUNC0(&tree_len, tree_len, 1) ||
	    FUNC0(&tree_len, tree_len, GIT_OID_RAWSZ))
		return NULL;

	entry = FUNC2(1, tree_len);
	if (!entry)
		return NULL;

	{
		char *filename_ptr;
		void *id_ptr;

		filename_ptr = ((char *) entry) + sizeof(git_tree_entry);
		FUNC4(filename_ptr, filename, filename_len);
		entry->filename = filename_ptr;

		id_ptr = filename_ptr + filename_len + 1;
		FUNC3(id_ptr, id);
		entry->oid = id_ptr;
	}

	entry->filename_len = (uint16_t)filename_len;

	return entry;
}