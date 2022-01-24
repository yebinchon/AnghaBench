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
typedef  char const* jstring ;
typedef  int /*<<< orphan*/  jobject ;
typedef  int /*<<< orphan*/  jlong ;
typedef  int /*<<< orphan*/  jint ;
struct TYPE_7__ {char* (* GetStringUTFChars ) (TYPE_1__**,char const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ReleaseStringUTFChars ) (TYPE_1__**,char const*,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;
typedef  char const IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_1__**,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LABEL_RETURN ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,char const*,char const*) ; 

__attribute__((used)) static void
FUNC7(JNIEnv *env, jobject thiz, jstring path, jlong start_time, jlong end_time, jint num, jint definition) {
    IjkMediaPlayer *mp = FUNC4(env, thiz);
    const char *c_path = NULL;
    FUNC1(path, env, "java/lang/IllegalArgumentException", "mpjni: setFrameAtTime: null path", LABEL_RETURN);
    FUNC1(mp, env, "java/lang/IllegalStateException", "mpjni: setFrameAtTime: null mp", LABEL_RETURN);

    c_path = (*env)->GetStringUTFChars(env, path, NULL );
    FUNC1(c_path, env, "java/lang/OutOfMemoryError", "mpjni: setFrameAtTime: path.string oom", LABEL_RETURN);

    FUNC0("setFrameAtTime: path %s", c_path);
    FUNC3(mp, c_path, start_time, end_time, num, definition);
    (*env)->ReleaseStringUTFChars(env, path, c_path);

LABEL_RETURN:
    FUNC2(&mp);
    return;
}