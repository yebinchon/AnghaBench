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
typedef  void uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

void *FUNC3(void *array, int elem_size, int *size, int new_size)
{
    if (new_size >= INT_MAX / elem_size) {
        FUNC0(NULL, AV_LOG_ERROR, "Array too big.\n");
        return NULL;
    }
    if (*size < new_size) {
        uint8_t *tmp = FUNC1(array, new_size, elem_size);
        if (!tmp) {
            FUNC0(NULL, AV_LOG_ERROR, "Could not alloc buffer.\n");
            return NULL;
        }
        FUNC2(tmp + *size*elem_size, 0, (new_size-*size) * elem_size);
        *size = new_size;
        return tmp;
    }
    return array;
}