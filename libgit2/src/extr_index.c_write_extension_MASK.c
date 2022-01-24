#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct index_extension {int /*<<< orphan*/  extension_size; } ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_3__ {int size; struct index_extension* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct index_extension*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct index_extension*,struct index_extension*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct index_extension*,int,int) ; 

__attribute__((used)) static int FUNC4(git_filebuf *file, struct index_extension *header, git_buf *data)
{
	struct index_extension ondisk;

	FUNC3(&ondisk, 0x0, sizeof(struct index_extension));
	FUNC2(&ondisk, header, 4);
	ondisk.extension_size = FUNC1(header->extension_size);

	FUNC0(file, &ondisk, sizeof(struct index_extension));
	return FUNC0(file, data->ptr, data->size);
}