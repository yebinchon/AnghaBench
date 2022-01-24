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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,size_t) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(sqlite3_context *context, int argc, sqlite3_value **args) {
    FUNC0(argc == 3);
    const void *in_blob = FUNC4(args[0]);
    size_t in_size = FUNC5(args[0]);
    size_t start = FUNC6(args[1]);
    const void *replacement = FUNC4(args[2]);
    size_t replacement_size = FUNC5(args[2]);
    size_t out_size = in_size - start + replacement_size;
    char *out_blob = FUNC2(out_size);
    FUNC1(out_blob, replacement, replacement_size);
    FUNC1(out_blob + replacement_size, in_blob + start, in_size - start);
    FUNC3(context, out_blob, out_size, sqlite3_free);
}