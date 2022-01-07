
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int * jstring ;
typedef int jobject ;
struct TYPE_13__ {int what; int arg1; int arg2; scalar_t__ obj; } ;
struct TYPE_12__ {int * (* NewStringUTF ) (TYPE_1__**,char*) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef int IjkMediaPlayer ;
typedef TYPE_2__ AVMessage ;


 int ALOGE (char*,int) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 int JNI_CHECK_GOTO (int ,TYPE_1__**,int *,char*,int ) ;
 int LABEL_RETURN ;
 int MEDIA_BUFFERING_UPDATE ;
 int MEDIA_ERROR ;
 int MEDIA_ERROR_IJK_PLAYER ;
 int MEDIA_GET_IMG_STATE ;
 int MEDIA_INFO ;
 int MEDIA_INFO_AUDIO_DECODED_START ;
 int MEDIA_INFO_AUDIO_RENDERING_START ;
 int MEDIA_INFO_AUDIO_SEEK_RENDERING_START ;
 int MEDIA_INFO_BUFFERING_END ;
 int MEDIA_INFO_BUFFERING_START ;
 int MEDIA_INFO_COMPONENT_OPEN ;
 int MEDIA_INFO_FIND_STREAM_INFO ;
 int MEDIA_INFO_MEDIA_ACCURATE_SEEK_COMPLETE ;
 int MEDIA_INFO_OPEN_INPUT ;
 int MEDIA_INFO_VIDEO_DECODED_START ;
 int MEDIA_INFO_VIDEO_RENDERING_START ;
 int MEDIA_INFO_VIDEO_ROTATION_CHANGED ;
 int MEDIA_INFO_VIDEO_SEEK_RENDERING_START ;
 int MEDIA_NOP ;
 int MEDIA_PLAYBACK_COMPLETE ;
 int MEDIA_PREPARED ;
 int MEDIA_SEEK_COMPLETE ;
 int MEDIA_SET_VIDEO_SAR ;
 int MEDIA_SET_VIDEO_SIZE ;
 int MEDIA_TIMED_TEXT ;
 int MPTRACE (char*,...) ;
 int assert (int) ;
 int ijkmp_get_msg (int *,TYPE_2__*,int) ;
 int ijkmp_get_weak_thiz (int *) ;
 int msg_free_res (TYPE_2__*) ;
 int post_event (TYPE_1__**,int ,int ,int ,int ) ;
 int post_event2 (TYPE_1__**,int ,int ,int ,int ,int *) ;
 int * stub1 (TYPE_1__**,char*) ;
 int * stub2 (TYPE_1__**,char*) ;

__attribute__((used)) static void message_loop_n(JNIEnv *env, IjkMediaPlayer *mp)
{
    jobject weak_thiz = (jobject) ijkmp_get_weak_thiz(mp);
    JNI_CHECK_GOTO(weak_thiz, env, ((void*)0), "mpjni: message_loop_n: null weak_thiz", LABEL_RETURN);

    while (1) {
        AVMessage msg;

        int retval = ijkmp_get_msg(mp, &msg, 1);
        if (retval < 0)
            break;


        assert(retval > 0);

        switch (msg.what) {
        case 140:
            MPTRACE("FFP_MSG_FLUSH:\n");
            post_event(env, weak_thiz, MEDIA_NOP, 0, 0);
            break;
        case 142:
            MPTRACE("FFP_MSG_ERROR: %d\n", msg.arg1);
            post_event(env, weak_thiz, MEDIA_ERROR, MEDIA_ERROR_IJK_PLAYER, msg.arg1);
            break;
        case 136:
            MPTRACE("FFP_MSG_PREPARED:\n");
            post_event(env, weak_thiz, MEDIA_PREPARED, 0, 0);
            break;
        case 144:
            MPTRACE("FFP_MSG_COMPLETED:\n");
            post_event(env, weak_thiz, MEDIA_PLAYBACK_COMPLETE, 0, 0);
            break;
        case 128:
            MPTRACE("FFP_MSG_VIDEO_SIZE_CHANGED: %d, %d\n", msg.arg1, msg.arg2);
            post_event(env, weak_thiz, MEDIA_SET_VIDEO_SIZE, msg.arg1, msg.arg2);
            break;
        case 135:
            MPTRACE("FFP_MSG_SAR_CHANGED: %d, %d\n", msg.arg1, msg.arg2);
            post_event(env, weak_thiz, MEDIA_SET_VIDEO_SAR, msg.arg1, msg.arg2);
            break;
        case 131:
            MPTRACE("FFP_MSG_VIDEO_RENDERING_START:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_VIDEO_RENDERING_START, 0);
            break;
        case 151:
            MPTRACE("FFP_MSG_AUDIO_RENDERING_START:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_AUDIO_RENDERING_START, 0);
            break;
        case 130:
            MPTRACE("FFP_MSG_VIDEO_ROTATION_CHANGED: %d\n", msg.arg1);
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_VIDEO_ROTATION_CHANGED, msg.arg1);
            break;
        case 152:
            MPTRACE("FFP_MSG_AUDIO_DECODED_START:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_AUDIO_DECODED_START, 0);
            break;
        case 132:
            MPTRACE("FFP_MSG_VIDEO_DECODED_START:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_VIDEO_DECODED_START, 0);
            break;
        case 138:
            MPTRACE("FFP_MSG_OPEN_INPUT:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_OPEN_INPUT, 0);
            break;
        case 141:
            MPTRACE("FFP_MSG_FIND_STREAM_INFO:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_FIND_STREAM_INFO, 0);
            break;
        case 143:
            MPTRACE("FFP_MSG_COMPONENT_OPEN:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_COMPONENT_OPEN, 0);
            break;
        case 147:
            MPTRACE("FFP_MSG_BUFFERING_START:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_BUFFERING_START, msg.arg1);
            break;
        case 148:
            MPTRACE("FFP_MSG_BUFFERING_END:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_BUFFERING_END, msg.arg1);
            break;
        case 145:

            post_event(env, weak_thiz, MEDIA_BUFFERING_UPDATE, msg.arg1, msg.arg2);
            break;
        case 149:
            break;
        case 146:
            break;
        case 134:
            MPTRACE("FFP_MSG_SEEK_COMPLETE:\n");
            post_event(env, weak_thiz, MEDIA_SEEK_COMPLETE, 0, 0);
            break;
        case 153:
            MPTRACE("FFP_MSG_ACCURATE_SEEK_COMPLETE:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_MEDIA_ACCURATE_SEEK_COMPLETE, msg.arg1);
            break;
        case 137:
            break;
        case 133:
            if (msg.obj) {
                jstring text = (*env)->NewStringUTF(env, (char *)msg.obj);
                post_event2(env, weak_thiz, MEDIA_TIMED_TEXT, 0, 0, text);
                J4A_DeleteLocalRef__p(env, &text);
            }
            else {
                post_event2(env, weak_thiz, MEDIA_TIMED_TEXT, 0, 0, ((void*)0));
            }
            break;
        case 139:
            if (msg.obj) {
                jstring file_name = (*env)->NewStringUTF(env, (char *)msg.obj);
                post_event2(env, weak_thiz, MEDIA_GET_IMG_STATE, msg.arg1, msg.arg2, file_name);
                J4A_DeleteLocalRef__p(env, &file_name);
            }
            else {
                post_event2(env, weak_thiz, MEDIA_GET_IMG_STATE, msg.arg1, msg.arg2, ((void*)0));
            }
            break;
        case 129:
            MPTRACE("FFP_MSG_VIDEO_SEEK_RENDERING_START:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_VIDEO_SEEK_RENDERING_START, msg.arg1);
            break;
        case 150:
            MPTRACE("FFP_MSG_AUDIO_SEEK_RENDERING_START:\n");
            post_event(env, weak_thiz, MEDIA_INFO, MEDIA_INFO_AUDIO_SEEK_RENDERING_START, msg.arg1);
            break;
        default:
            ALOGE("unknown FFP_MSG_xxx(%d)\n", msg.what);
            break;
        }
        msg_free_res(&msg);
    }

LABEL_RETURN:
    ;
}
