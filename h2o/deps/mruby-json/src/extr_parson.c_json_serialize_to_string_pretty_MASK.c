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
typedef  scalar_t__ JSON_Status ;

/* Variables and functions */
 scalar_t__ JSONFailure ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*,size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 

char * FUNC4(const JSON_Value *value) {
    JSON_Status serialization_result = JSONFailure;
    size_t buf_size_bytes = FUNC1(value);
    char *buf = NULL;
    if (buf_size_bytes == 0) {
        return NULL;
    }
    buf = (char*)FUNC3(buf_size_bytes);
    if (buf == NULL) {
        return NULL;
    }
    serialization_result = FUNC2(value, buf, buf_size_bytes);
    if (serialization_result == JSONFailure) {
        FUNC0(buf);
        return NULL;
    }
    return buf;
}