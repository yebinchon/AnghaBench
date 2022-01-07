; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_message_loop_n.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_message_loop_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* (%struct.TYPE_12__**, i8*)* }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"mpjni: message_loop_n: null weak_thiz\00", align 1
@LABEL_RETURN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"FFP_MSG_FLUSH:\0A\00", align 1
@MEDIA_NOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"FFP_MSG_ERROR: %d\0A\00", align 1
@MEDIA_ERROR = common dso_local global i32 0, align 4
@MEDIA_ERROR_IJK_PLAYER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"FFP_MSG_PREPARED:\0A\00", align 1
@MEDIA_PREPARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"FFP_MSG_COMPLETED:\0A\00", align 1
@MEDIA_PLAYBACK_COMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"FFP_MSG_VIDEO_SIZE_CHANGED: %d, %d\0A\00", align 1
@MEDIA_SET_VIDEO_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"FFP_MSG_SAR_CHANGED: %d, %d\0A\00", align 1
@MEDIA_SET_VIDEO_SAR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"FFP_MSG_VIDEO_RENDERING_START:\0A\00", align 1
@MEDIA_INFO = common dso_local global i32 0, align 4
@MEDIA_INFO_VIDEO_RENDERING_START = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"FFP_MSG_AUDIO_RENDERING_START:\0A\00", align 1
@MEDIA_INFO_AUDIO_RENDERING_START = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"FFP_MSG_VIDEO_ROTATION_CHANGED: %d\0A\00", align 1
@MEDIA_INFO_VIDEO_ROTATION_CHANGED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"FFP_MSG_AUDIO_DECODED_START:\0A\00", align 1
@MEDIA_INFO_AUDIO_DECODED_START = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"FFP_MSG_VIDEO_DECODED_START:\0A\00", align 1
@MEDIA_INFO_VIDEO_DECODED_START = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"FFP_MSG_OPEN_INPUT:\0A\00", align 1
@MEDIA_INFO_OPEN_INPUT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"FFP_MSG_FIND_STREAM_INFO:\0A\00", align 1
@MEDIA_INFO_FIND_STREAM_INFO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"FFP_MSG_COMPONENT_OPEN:\0A\00", align 1
@MEDIA_INFO_COMPONENT_OPEN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"FFP_MSG_BUFFERING_START:\0A\00", align 1
@MEDIA_INFO_BUFFERING_START = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"FFP_MSG_BUFFERING_END:\0A\00", align 1
@MEDIA_INFO_BUFFERING_END = common dso_local global i32 0, align 4
@MEDIA_BUFFERING_UPDATE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"FFP_MSG_SEEK_COMPLETE:\0A\00", align 1
@MEDIA_SEEK_COMPLETE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"FFP_MSG_ACCURATE_SEEK_COMPLETE:\0A\00", align 1
@MEDIA_INFO_MEDIA_ACCURATE_SEEK_COMPLETE = common dso_local global i32 0, align 4
@MEDIA_TIMED_TEXT = common dso_local global i32 0, align 4
@MEDIA_GET_IMG_STATE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [37 x i8] c"FFP_MSG_VIDEO_SEEK_RENDERING_START:\0A\00", align 1
@MEDIA_INFO_VIDEO_SEEK_RENDERING_START = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"FFP_MSG_AUDIO_SEEK_RENDERING_START:\0A\00", align 1
@MEDIA_INFO_AUDIO_SEEK_RENDERING_START = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"unknown FFP_MSG_xxx(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__**, i32*)* @message_loop_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @message_loop_n(%struct.TYPE_12__** %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ijkmp_get_weak_thiz(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %14 = load i32, i32* @LABEL_RETURN, align 4
  %15 = call i32 @JNI_CHECK_GOTO(i32 %12, %struct.TYPE_12__** %13, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %2, %275
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ijkmp_get_msg(i32* %17, %struct.TYPE_13__* %6, i32 1)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %277

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %271 [
    i32 140, label %29
    i32 142, label %35
    i32 136, label %46
    i32 144, label %52
    i32 128, label %58
    i32 135, label %72
    i32 131, label %86
    i32 151, label %93
    i32 130, label %100
    i32 152, label %111
    i32 132, label %118
    i32 138, label %125
    i32 141, label %132
    i32 143, label %139
    i32 147, label %146
    i32 148, label %155
    i32 145, label %164
    i32 149, label %173
    i32 146, label %174
    i32 134, label %175
    i32 153, label %181
    i32 137, label %190
    i32 133, label %191
    i32 139, label %218
    i32 129, label %253
    i32 150, label %262
  ]

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MEDIA_NOP, align 4
  %34 = call i32 @post_event(%struct.TYPE_12__** %31, i32 %32, i32 %33, i32 0, i32 0)
  br label %275

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MEDIA_ERROR, align 4
  %42 = load i32, i32* @MEDIA_ERROR_IJK_PLAYER, align 4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @post_event(%struct.TYPE_12__** %39, i32 %40, i32 %41, i32 %42, i32 %44)
  br label %275

46:                                               ; preds = %22
  %47 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MEDIA_PREPARED, align 4
  %51 = call i32 @post_event(%struct.TYPE_12__** %48, i32 %49, i32 %50, i32 0, i32 0)
  br label %275

52:                                               ; preds = %22
  %53 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MEDIA_PLAYBACK_COMPLETE, align 4
  %57 = call i32 @post_event(%struct.TYPE_12__** %54, i32 %55, i32 %56, i32 0, i32 0)
  br label %275

58:                                               ; preds = %22
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %62)
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MEDIA_SET_VIDEO_SIZE, align 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @post_event(%struct.TYPE_12__** %64, i32 %65, i32 %66, i32 %68, i32 %70)
  br label %275

72:                                               ; preds = %22
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %74, i32 %76)
  %78 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @MEDIA_SET_VIDEO_SAR, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @post_event(%struct.TYPE_12__** %78, i32 %79, i32 %80, i32 %82, i32 %84)
  br label %275

86:                                               ; preds = %22
  %87 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MEDIA_INFO, align 4
  %91 = load i32, i32* @MEDIA_INFO_VIDEO_RENDERING_START, align 4
  %92 = call i32 @post_event(%struct.TYPE_12__** %88, i32 %89, i32 %90, i32 %91, i32 0)
  br label %275

93:                                               ; preds = %22
  %94 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %95 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @MEDIA_INFO, align 4
  %98 = load i32, i32* @MEDIA_INFO_AUDIO_RENDERING_START, align 4
  %99 = call i32 @post_event(%struct.TYPE_12__** %95, i32 %96, i32 %97, i32 %98, i32 0)
  br label %275

100:                                              ; preds = %22
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @MEDIA_INFO, align 4
  %107 = load i32, i32* @MEDIA_INFO_VIDEO_ROTATION_CHANGED, align 4
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @post_event(%struct.TYPE_12__** %104, i32 %105, i32 %106, i32 %107, i32 %109)
  br label %275

111:                                              ; preds = %22
  %112 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %113 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @MEDIA_INFO, align 4
  %116 = load i32, i32* @MEDIA_INFO_AUDIO_DECODED_START, align 4
  %117 = call i32 @post_event(%struct.TYPE_12__** %113, i32 %114, i32 %115, i32 %116, i32 0)
  br label %275

118:                                              ; preds = %22
  %119 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %120 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @MEDIA_INFO, align 4
  %123 = load i32, i32* @MEDIA_INFO_VIDEO_DECODED_START, align 4
  %124 = call i32 @post_event(%struct.TYPE_12__** %120, i32 %121, i32 %122, i32 %123, i32 0)
  br label %275

125:                                              ; preds = %22
  %126 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @MEDIA_INFO, align 4
  %130 = load i32, i32* @MEDIA_INFO_OPEN_INPUT, align 4
  %131 = call i32 @post_event(%struct.TYPE_12__** %127, i32 %128, i32 %129, i32 %130, i32 0)
  br label %275

132:                                              ; preds = %22
  %133 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %134 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @MEDIA_INFO, align 4
  %137 = load i32, i32* @MEDIA_INFO_FIND_STREAM_INFO, align 4
  %138 = call i32 @post_event(%struct.TYPE_12__** %134, i32 %135, i32 %136, i32 %137, i32 0)
  br label %275

139:                                              ; preds = %22
  %140 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %141 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @MEDIA_INFO, align 4
  %144 = load i32, i32* @MEDIA_INFO_COMPONENT_OPEN, align 4
  %145 = call i32 @post_event(%struct.TYPE_12__** %141, i32 %142, i32 %143, i32 %144, i32 0)
  br label %275

146:                                              ; preds = %22
  %147 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %148 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @MEDIA_INFO, align 4
  %151 = load i32, i32* @MEDIA_INFO_BUFFERING_START, align 4
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @post_event(%struct.TYPE_12__** %148, i32 %149, i32 %150, i32 %151, i32 %153)
  br label %275

155:                                              ; preds = %22
  %156 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %157 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @MEDIA_INFO, align 4
  %160 = load i32, i32* @MEDIA_INFO_BUFFERING_END, align 4
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @post_event(%struct.TYPE_12__** %157, i32 %158, i32 %159, i32 %160, i32 %162)
  br label %275

164:                                              ; preds = %22
  %165 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @MEDIA_BUFFERING_UPDATE, align 4
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @post_event(%struct.TYPE_12__** %165, i32 %166, i32 %167, i32 %169, i32 %171)
  br label %275

173:                                              ; preds = %22
  br label %275

174:                                              ; preds = %22
  br label %275

175:                                              ; preds = %22
  %176 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %177 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @MEDIA_SEEK_COMPLETE, align 4
  %180 = call i32 @post_event(%struct.TYPE_12__** %177, i32 %178, i32 %179, i32 0, i32 0)
  br label %275

181:                                              ; preds = %22
  %182 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %183 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @MEDIA_INFO, align 4
  %186 = load i32, i32* @MEDIA_INFO_MEDIA_ACCURATE_SEEK_COMPLETE, align 4
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @post_event(%struct.TYPE_12__** %183, i32 %184, i32 %185, i32 %186, i32 %188)
  br label %275

190:                                              ; preds = %22
  br label %275

191:                                              ; preds = %22
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %191
  %196 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32* (%struct.TYPE_12__**, i8*)*, i32* (%struct.TYPE_12__**, i8*)** %198, align 8
  %200 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32* %199(%struct.TYPE_12__** %200, i8* %203)
  store i32* %204, i32** %8, align 8
  %205 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @MEDIA_TIMED_TEXT, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = call i32 @post_event2(%struct.TYPE_12__** %205, i32 %206, i32 %207, i32 0, i32 0, i32* %208)
  %210 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %211 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_12__** %210, i32** %8)
  br label %217

212:                                              ; preds = %191
  %213 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @MEDIA_TIMED_TEXT, align 4
  %216 = call i32 @post_event2(%struct.TYPE_12__** %213, i32 %214, i32 %215, i32 0, i32 0, i32* null)
  br label %217

217:                                              ; preds = %212, %195
  br label %275

218:                                              ; preds = %22
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %218
  %223 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32* (%struct.TYPE_12__**, i8*)*, i32* (%struct.TYPE_12__**, i8*)** %225, align 8
  %227 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32* %226(%struct.TYPE_12__** %227, i8* %230)
  store i32* %231, i32** %9, align 8
  %232 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @MEDIA_GET_IMG_STATE, align 4
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = call i32 @post_event2(%struct.TYPE_12__** %232, i32 %233, i32 %234, i32 %236, i32 %238, i32* %239)
  %241 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %242 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_12__** %241, i32** %9)
  br label %252

243:                                              ; preds = %218
  %244 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* @MEDIA_GET_IMG_STATE, align 4
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @post_event2(%struct.TYPE_12__** %244, i32 %245, i32 %246, i32 %248, i32 %250, i32* null)
  br label %252

252:                                              ; preds = %243, %222
  br label %275

253:                                              ; preds = %22
  %254 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %255 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @MEDIA_INFO, align 4
  %258 = load i32, i32* @MEDIA_INFO_VIDEO_SEEK_RENDERING_START, align 4
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @post_event(%struct.TYPE_12__** %255, i32 %256, i32 %257, i32 %258, i32 %260)
  br label %275

262:                                              ; preds = %22
  %263 = call i32 (i8*, ...) @MPTRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %264 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* @MEDIA_INFO, align 4
  %267 = load i32, i32* @MEDIA_INFO_AUDIO_SEEK_RENDERING_START, align 4
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @post_event(%struct.TYPE_12__** %264, i32 %265, i32 %266, i32 %267, i32 %269)
  br label %275

271:                                              ; preds = %22
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @ALOGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %273)
  br label %275

275:                                              ; preds = %271, %262, %253, %252, %217, %190, %181, %175, %174, %173, %164, %155, %146, %139, %132, %125, %118, %111, %100, %93, %86, %72, %58, %52, %46, %35, %29
  %276 = call i32 @msg_free_res(%struct.TYPE_13__* %6)
  br label %16

277:                                              ; preds = %21
  br label %278

278:                                              ; preds = %277
  ret void
}

declare dso_local i32 @ijkmp_get_weak_thiz(i32*) #1

declare dso_local i32 @JNI_CHECK_GOTO(i32, %struct.TYPE_12__**, i32*, i8*, i32) #1

declare dso_local i32 @ijkmp_get_msg(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MPTRACE(i8*, ...) #1

declare dso_local i32 @post_event(%struct.TYPE_12__**, i32, i32, i32, i32) #1

declare dso_local i32 @post_event2(%struct.TYPE_12__**, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_12__**, i32**) #1

declare dso_local i32 @ALOGE(i8*, i32) #1

declare dso_local i32 @msg_free_res(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
