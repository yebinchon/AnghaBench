; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ijkplayer.c_ijkmp_get_msg.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ijkplayer.c_ijkmp_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ijkmp_get_msg: FFP_MSG_PREPARED\0A\00", align 1
@MP_STATE_ASYNC_PREPARING = common dso_local global i32 0, align 4
@MP_STATE_PREPARED = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"FFP_MSG_PREPARED: expecting mp_state==MP_STATE_ASYNC_PREPARING\0A\00", align 1
@MP_STATE_PAUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ijkmp_get_msg: FFP_MSG_COMPLETED\0A\00", align 1
@MP_STATE_COMPLETED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ijkmp_get_msg: FFP_MSG_SEEK_COMPLETE\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ijkmp_get_msg: FFP_REQ_START\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"ijkmp_get_msg: FFP_REQ_START: restart from beginning\0A\00", align 1
@MP_STATE_STARTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"ijkmp_get_msg: FFP_REQ_START: restart from seek pos\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"ijkmp_get_msg: FFP_REQ_START: start on fly\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"ijkmp_get_msg: FFP_REQ_PAUSE\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"ijkmp_get_msg: FFP_REQ_SEEK\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"ijkmp_get_msg: FFP_REQ_SEEK: seek to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ijkmp_get_msg(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = call i32 @assert(%struct.TYPE_14__* %11)
  br label %13

13:                                               ; preds = %3, %237
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @msg_queue_get(i32* %17, %struct.TYPE_15__* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %242

25:                                               ; preds = %13
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %234 [
    i32 132, label %29
    i32 133, label %64
    i32 131, label %79
    i32 128, label %91
    i32 130, label %172
    i32 129, label %198
  ]

29:                                               ; preds = %25
  %30 = call i32 @MPTRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MP_STATE_ASYNC_PREPARING, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load i32, i32* @MP_STATE_PREPARED, align 4
  %42 = call i32 @ijkmp_change_state_l(%struct.TYPE_14__* %40, i32 %41)
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = load i32, i32* @AV_LOG_DEBUG, align 4
  %48 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %46, i32 %47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = load i32, i32* @MP_STATE_PAUSED, align 4
  %59 = call i32 @ijkmp_change_state_l(%struct.TYPE_14__* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = call i32 @pthread_mutex_unlock(i32* %62)
  br label %234

64:                                               ; preds = %25
  %65 = call i32 @MPTRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = call i32 @pthread_mutex_lock(i32* %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = load i32, i32* @MP_STATE_COMPLETED, align 4
  %75 = call i32 @ijkmp_change_state_l(%struct.TYPE_14__* %73, i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  br label %234

79:                                               ; preds = %25
  %80 = call i32 @MPTRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = call i32 @pthread_mutex_lock(i32* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 6
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 5
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = call i32 @pthread_mutex_unlock(i32* %89)
  br label %234

91:                                               ; preds = %25
  %92 = call i32 @MPTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = call i32 @pthread_mutex_lock(i32* %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ikjmp_chkst_start_l(i32 %98)
  %100 = icmp eq i32 0, %99
  br i1 %100, label %101, label %168

101:                                              ; preds = %91
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %101
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load i32, i32* @AV_LOG_DEBUG, align 4
  %116 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %114, i32 %115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = call i32 @ffp_start_from_l(%struct.TYPE_16__* %119, i32 0)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = load i32, i32* @MP_STATE_STARTED, align 4
  %126 = call i32 @ijkmp_change_state_l(%struct.TYPE_14__* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %111
  br label %145

128:                                              ; preds = %106
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load i32, i32* @AV_LOG_DEBUG, align 4
  %133 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %131, i32 %132, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = call i32 @ffp_start_l(%struct.TYPE_16__* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %128
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = load i32, i32* @MP_STATE_STARTED, align 4
  %143 = call i32 @ijkmp_change_state_l(%struct.TYPE_14__* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %128
  br label %145

145:                                              ; preds = %144, %127
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store i32 0, i32* %149, align 4
  br label %167

150:                                              ; preds = %101
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = load i32, i32* @AV_LOG_DEBUG, align 4
  %155 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %153, i32 %154, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = call i32 @ffp_start_l(%struct.TYPE_16__* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %150
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %164 = load i32, i32* @MP_STATE_STARTED, align 4
  %165 = call i32 @ijkmp_change_state_l(%struct.TYPE_14__* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %150
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %91
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = call i32 @pthread_mutex_unlock(i32* %170)
  br label %234

172:                                              ; preds = %25
  %173 = call i32 @MPTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = call i32 @pthread_mutex_lock(i32* %175)
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @ikjmp_chkst_pause_l(i32 %179)
  %181 = icmp eq i32 0, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %172
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = call i32 @ffp_pause_l(%struct.TYPE_16__* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %191 = load i32, i32* @MP_STATE_PAUSED, align 4
  %192 = call i32 @ijkmp_change_state_l(%struct.TYPE_14__* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %182
  br label %194

194:                                              ; preds = %193, %172
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = call i32 @pthread_mutex_unlock(i32* %196)
  br label %234

198:                                              ; preds = %25
  %199 = call i32 @MPTRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = call i32 @pthread_mutex_lock(i32* %201)
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @ikjmp_chkst_seek_l(i32 %205)
  %207 = icmp eq i32 0, %206
  br i1 %207, label %208, label %230

208:                                              ; preds = %198
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @ffp_seek_to_l(%struct.TYPE_16__* %213, i64 %216)
  %218 = icmp eq i32 0, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %208
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = load i32, i32* @AV_LOG_DEBUG, align 4
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %222, i32 %223, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %219, %208
  br label %230

230:                                              ; preds = %229, %198
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 2
  %233 = call i32 @pthread_mutex_unlock(i32* %232)
  br label %234

234:                                              ; preds = %25, %230, %194, %168, %79, %64, %60
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %239 = call i32 @msg_free_res(%struct.TYPE_15__* %238)
  br label %13

240:                                              ; preds = %234
  %241 = load i32, i32* %9, align 4
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %240, %23
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @msg_queue_get(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @MPTRACE(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @ijkmp_change_state_l(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ikjmp_chkst_start_l(i32) #1

declare dso_local i32 @ffp_start_from_l(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ffp_start_l(%struct.TYPE_16__*) #1

declare dso_local i32 @ikjmp_chkst_pause_l(i32) #1

declare dso_local i32 @ffp_pause_l(%struct.TYPE_16__*) #1

declare dso_local i32 @ikjmp_chkst_seek_l(i32) #1

declare dso_local i32 @ffp_seek_to_l(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @msg_free_res(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
