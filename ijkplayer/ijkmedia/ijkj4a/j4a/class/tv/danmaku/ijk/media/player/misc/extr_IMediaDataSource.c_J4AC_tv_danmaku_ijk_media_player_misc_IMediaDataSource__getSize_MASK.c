#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobject ;
typedef  int /*<<< orphan*/  jlong ;
struct TYPE_6__ {int /*<<< orphan*/  method_getSize; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* CallLongMethod ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 TYPE_3__ class_J4AC_tv_danmaku_ijk_media_player_misc_IMediaDataSource ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

jlong FUNC1(JNIEnv *env, jobject thiz)
{
    return (*env)->CallLongMethod(env, thiz, class_J4AC_tv_danmaku_ijk_media_player_misc_IMediaDataSource.method_getSize);
}