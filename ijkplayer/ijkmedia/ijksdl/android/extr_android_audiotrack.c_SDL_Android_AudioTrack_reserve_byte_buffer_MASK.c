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
struct TYPE_3__ {int byte_buffer_capacity; int /*<<< orphan*/  byte_buffer; int /*<<< orphan*/  min_buffer_size; } ;
typedef  TYPE_1__ SDL_Android_AudioTrack ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(JNIEnv *env, SDL_Android_AudioTrack *atrack, int size_in_byte)
{
    if (atrack->byte_buffer && size_in_byte <= atrack->byte_buffer_capacity)
        return size_in_byte;

    FUNC1(env, &atrack->byte_buffer);
    atrack->byte_buffer_capacity = 0;

    int capacity = FUNC0(size_in_byte, atrack->min_buffer_size);
    atrack->byte_buffer = FUNC2(env, capacity);
    if (!atrack->byte_buffer)
        return -1;

    atrack->byte_buffer_capacity = capacity;
    return capacity;
}