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
struct expected_t {int is_critical; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int FUNC0 (char const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *ctx, const char *path, size_t path_len, int is_critical)
{
    struct expected_t **expected = ctx;
    FUNC1(FUNC0(path, path_len, (*expected)->path, FUNC2((*expected)->path)));
    FUNC1(is_critical == (*expected)->is_critical);
    ++*expected;
}