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
typedef  int /*<<< orphan*/  JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Status ;

/* Variables and functions */
 int /*<<< orphan*/  JSONFailure ; 
 int /*<<< orphan*/  JSONSuccess ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

JSON_Status FUNC2(const JSON_Value *value, char *buf, size_t buf_size_in_bytes) {
    int written = -1;
    size_t needed_size_in_bytes = FUNC0(value);
    if (needed_size_in_bytes == 0 || buf_size_in_bytes < needed_size_in_bytes) {
        return JSONFailure;
    }
    written = FUNC1(value, buf, 0, 0, NULL);
    if (written < 0) {
        return JSONFailure;
    }
    return JSONSuccess;
}