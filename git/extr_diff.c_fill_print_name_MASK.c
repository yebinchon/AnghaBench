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
struct strbuf {int dummy; } ;
struct diffstat_file {int /*<<< orphan*/  print_name; int /*<<< orphan*/  comments; int /*<<< orphan*/  name; int /*<<< orphan*/  from_name; scalar_t__ is_renamed; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct diffstat_file *file)
{
	struct strbuf pname = STRBUF_INIT;

	if (file->print_name)
		return;

	if (file->is_renamed)
		FUNC0(&pname, file->from_name, file->name);
	else
		FUNC1(file->name, &pname, NULL, 0);

	if (file->comments)
		FUNC2(&pname, " (%s)", file->comments);

	file->print_name = FUNC3(&pname, NULL);
}