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
struct TYPE_4__ {int /*<<< orphan*/  content_len; int /*<<< orphan*/  content; } ;
typedef  TYPE_1__ git_parse_ctx ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  scalar_t__ git_bom_t ;

/* Variables and functions */
 scalar_t__ GIT_BOM_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(git_parse_ctx *parser)
{
	git_buf buf = FUNC0(parser->content, parser->content_len);
	git_bom_t bom;
	int bom_offset = FUNC1(&bom, &buf);

	if (bom == GIT_BOM_UTF8)
		FUNC2(parser, bom_offset);

	/* TODO: reference implementation is pretty stupid with BoM */

	return 0;
}