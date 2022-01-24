#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  on_disk; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_INDEXBIG_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(void)
{
   git_index *index;

   FUNC2(TEST_INDEXBIG_PATH, "index_rewrite");

   FUNC1(FUNC5(&index, "index_rewrite"));
   FUNC0(index->on_disk);

   FUNC1(FUNC6(index));
   FUNC3(TEST_INDEXBIG_PATH, "index_rewrite");

   FUNC4(index);

   FUNC7("index_rewrite");
}