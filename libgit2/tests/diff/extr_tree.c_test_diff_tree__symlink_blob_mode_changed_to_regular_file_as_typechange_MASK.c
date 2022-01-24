#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_TYPECHANGE ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_TYPECHANGE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ expect ; 
 TYPE_1__ opts ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	/*
	 * $ git diff  7fccd7..a8595c
	 * diff --git a/include/Nu/Nu.h b/include/Nu/Nu.h
	 * deleted file mode 120000
	 * index 19bf568..0000000
	 * --- a/include/Nu/Nu.h
	 * +++ /dev/null
	 * @@ -1 +0,0 @@
	 * -../../objc/Nu.h
	 * \ No newline at end of file
	 * diff --git a/include/Nu/Nu.h b/include/Nu/Nu.h
	 * new file mode 100755
	 * index 0000000..f9e6561
	 * --- /dev/null
	 * +++ b/include/Nu/Nu.h
	 * @@ -0,0 +1 @@
	 * +awesome content
	 * diff --git a/objc/Nu.h b/objc/Nu.h
	 * deleted file mode 100644
	 * index f9e6561..0000000
	 * --- a/objc/Nu.h
	 * +++ /dev/null
	 * @@ -1 +0,0 @@
	 * -awesome content
	*/

	opts.flags = GIT_DIFF_INCLUDE_TYPECHANGE;
	FUNC1("7fccd7", "a8595c");

	FUNC0(2, expect.files);
	FUNC0(1, expect.file_status[GIT_DELTA_DELETED]);
	FUNC0(0, expect.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(0, expect.file_status[GIT_DELTA_ADDED]);
	FUNC0(1, expect.file_status[GIT_DELTA_TYPECHANGE]);
}