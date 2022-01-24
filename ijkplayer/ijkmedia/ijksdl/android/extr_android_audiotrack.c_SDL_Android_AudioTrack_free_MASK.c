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
struct TYPE_4__ {scalar_t__ thiz; scalar_t__ byte_buffer_capacity; scalar_t__ byte_buffer; } ;
typedef  TYPE_1__ SDL_Android_AudioTrack ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(JNIEnv *env, SDL_Android_AudioTrack* atrack)
{
    FUNC1(env, &atrack->byte_buffer);
    atrack->byte_buffer_capacity = 0;

    if (atrack->thiz) {
        FUNC0(env, atrack->thiz);
        FUNC1(env, &atrack->thiz);
    }

    FUNC2(atrack);
}