#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsize ;
typedef  int /*<<< orphan*/ * jbyteArray ;
struct TYPE_7__ {int /*<<< orphan*/ * (* NewGlobalRef ) (TYPE_1__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* NewByteArray ) (TYPE_1__**,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__**,int /*<<< orphan*/ *) ; 

jbyteArray FUNC4(JNIEnv *env, jsize capacity)
{
    jbyteArray local = (*env)->NewByteArray(env, capacity);
    if (FUNC1(env) || !local)
        return NULL;

    jbyteArray global = (*env)->NewGlobalRef(env, local);
    FUNC0(env, &local);
    return global;
}