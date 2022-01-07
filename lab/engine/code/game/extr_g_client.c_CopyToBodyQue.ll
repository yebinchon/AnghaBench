; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_CopyToBodyQue.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_CopyToBodyQue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__, %struct.TYPE_15__, i8*, i32, i32, i64, %struct.TYPE_13__*, i64, i8*, i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i32, i32, %struct.TYPE_14__, i64, i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@CONTENTS_NODROP = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@BODY_QUEUE_SIZE = common dso_local global i32 0, align 4
@EF_DEAD = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_17__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@TR_GRAVITY = common dso_local global i32 0, align 4
@TR_STATIONARY = common dso_local global i32 0, align 4
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_CORPSE = common dso_local global i32 0, align 4
@BodySink = common dso_local global i32 0, align 4
@body_die = common dso_local global i32 0, align 4
@GIB_HEALTH = common dso_local global i64 0, align 8
@qfalse = common dso_local global i8* null, align 8
@EF_KAMIKAZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CopyToBodyQue(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = call i32 @trap_UnlinkEntity(%struct.TYPE_17__* %5)
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @trap_PointContents(i32 %10, i32 -1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CONTENTS_NODROP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %225

17:                                               ; preds = %1
  %18 = load %struct.TYPE_17__**, %struct.TYPE_17__*** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 3), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %18, i64 %19
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %3, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %23 = add i64 %22, 1
  %24 = load i32, i32* @BODY_QUEUE_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = urem i64 %23, %25
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = bitcast %struct.TYPE_15__* %28 to i8*
  %32 = bitcast %struct.TYPE_15__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 80, i1 false)
  %33 = load i32, i32* @EF_DEAD, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_entities, align 8
  %45 = ptrtoint %struct.TYPE_17__* %43 to i64
  %46 = ptrtoint %struct.TYPE_17__* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 200
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 2), align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 11
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** @qtrue, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 10
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 9
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ENTITYNUM_NONE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %17
  %68 = load i32, i32* @TR_GRAVITY, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 2), align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  store i64 %73, i64* %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @VectorCopy(i32 %83, i32 %88)
  br label %96

90:                                               ; preds = %17
  %91 = load i32, i32* @TR_STATIONARY, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %67
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 6
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  switch i32 %106, label %122 [
    i32 130, label %107
    i32 133, label %107
    i32 129, label %114
    i32 132, label %114
    i32 128, label %121
    i32 131, label %121
  ]

107:                                              ; preds = %96, %96
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  store i32 133, i32* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  store i32 133, i32* %113, align 4
  br label %129

114:                                              ; preds = %96, %96
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  store i32 132, i32* %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  store i32 132, i32* %120, align 4
  br label %129

121:                                              ; preds = %96, %96
  br label %122

122:                                              ; preds = %96, %121
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  store i32 131, i32* %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  store i32 131, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %114, %107
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 7
  store i32 %133, i32* %136, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @VectorCopy(i32 %140, i32 %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @VectorCopy(i32 %149, i32 %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @VectorCopy(i32 %158, i32 %162)
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @VectorCopy(i32 %167, i32 %171)
  %173 = load i32, i32* @CONTENTS_SOLID, align 4
  %174 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @CONTENTS_CORPSE, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 2), align 8
  %190 = add nsw i64 %189, 5000
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 7
  store i64 %190, i64* %192, align 8
  %193 = load i32, i32* @BodySink, align 4
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 6
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @body_die, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @GIB_HEALTH, align 8
  %203 = icmp sle i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %129
  %205 = load i8*, i8** @qfalse, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 4
  store i8* %205, i8** %207, align 8
  br label %212

208:                                              ; preds = %129
  %209 = load i8*, i8** @qtrue, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  br label %212

212:                                              ; preds = %208, %204
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @VectorCopy(i32 %217, i32 %221)
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %224 = call i32 @trap_LinkEntity(%struct.TYPE_17__* %223)
  br label %225

225:                                              ; preds = %212, %16
  ret void
}

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_17__*) #1

declare dso_local i32 @trap_PointContents(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
