; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_G_TryPushingEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_G_TryPushingEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i32*, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__*, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i32, i64, i64, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32* }

@EF_MOVER_STOP = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@pushed_p = common dso_local global %struct.TYPE_22__* null, align 8
@pushed = common dso_local global %struct.TYPE_22__* null, align 8
@MAX_GENTITIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"pushed_p > &pushed[MAX_GENTITIES]\00", align 1
@YAW = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_TryPushingEntity(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32*], align 16
  %11 = alloca [3 x i32*], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EF_MOVER_STOP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %5, align 4
  br label %320

35:                                               ; preds = %23, %4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed, align 8
  %38 = load i64, i64* @MAX_GENTITIES, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i64 %38
  %40 = icmp ugt %struct.TYPE_22__* %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @G_Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 3
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %46, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @VectorCopy(i32* %51, i32* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @VectorCopy(i32* %60, i32* %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = icmp ne %struct.TYPE_18__* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %43
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @YAW, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @VectorCopy(i32* %86, i32* %89)
  br label %91

91:                                               ; preds = %69, %43
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 1
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** @pushed_p, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %96 = call i32 @G_CreateRotationMatrix(i32* %94, i32** %95)
  %97 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %98 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %99 = call i32 @G_TransposeMatrix(i32** %97, i32** %98)
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = icmp ne %struct.TYPE_18__* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %91
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @VectorSubtract(i32* %110, i32* %114, i32* %115)
  br label %129

117:                                              ; preds = %91
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @VectorSubtract(i32* %122, i32* %126, i32* %127)
  br label %129

129:                                              ; preds = %117, %104
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = call i32 @VectorCopy(i32* %130, i32* %131)
  %133 = load i32*, i32** %13, align 8
  %134 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %135 = call i32 @G_RotatePoint(i32* %133, i32** %134)
  %136 = load i32*, i32** %13, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = call i32 @VectorSubtract(i32* %136, i32* %137, i32* %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @VectorAdd(i32* %144, i32* %145, i32* %150)
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32*, i32** %14, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @VectorAdd(i32* %156, i32* %157, i32* %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = icmp ne %struct.TYPE_18__* %166, null
  br i1 %167, label %168, label %214

168:                                              ; preds = %129
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @VectorAdd(i32* %174, i32* %175, i32* %181)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32*, i32** %14, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @VectorAdd(i32* %188, i32* %189, i32* %195)
  %197 = load i32*, i32** %9, align 8
  %198 = load i64, i64* @YAW, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @ANGLE2SHORT(i32 %200)
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @YAW, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %201
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 4
  br label %214

214:                                              ; preds = %168, %129
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %218, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %214
  %225 = load i8*, i8** @ENTITYNUM_NONE, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  store i64 %226, i64* %229, align 8
  br label %230

230:                                              ; preds = %224, %214
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %232 = call %struct.TYPE_21__* @G_TestEntityPosition(%struct.TYPE_21__* %231)
  store %struct.TYPE_21__* %232, %struct.TYPE_21__** %15, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %234 = icmp ne %struct.TYPE_21__* %233, null
  br i1 %234, label %267, label %235

235:                                              ; preds = %230
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %237, align 8
  %239 = icmp ne %struct.TYPE_18__* %238, null
  br i1 %239, label %240, label %252

240:                                              ; preds = %235
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @VectorCopy(i32* %246, i32* %250)
  br label %263

252:                                              ; preds = %235
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @VectorCopy(i32* %257, i32* %261)
  br label %263

263:                                              ; preds = %252, %240
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %265 = call i32 @trap_LinkEntity(%struct.TYPE_21__* %264)
  %266 = load i32, i32* @qtrue, align 4
  store i32 %266, i32* %5, align 4
  br label %320

267:                                              ; preds = %230
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i64 -1
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @VectorCopy(i32* %271, i32* %276)
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = icmp ne %struct.TYPE_18__* %280, null
  br i1 %281, label %282, label %294

282:                                              ; preds = %267
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i64 -1
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @VectorCopy(i32* %286, i32* %292)
  br label %294

294:                                              ; preds = %282, %267
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i64 -1
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @VectorCopy(i32* %298, i32* %303)
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %306 = call %struct.TYPE_21__* @G_TestEntityPosition(%struct.TYPE_21__* %305)
  store %struct.TYPE_21__* %306, %struct.TYPE_21__** %15, align 8
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %308 = icmp ne %struct.TYPE_21__* %307, null
  br i1 %308, label %318, label %309

309:                                              ; preds = %294
  %310 = load i8*, i8** @ENTITYNUM_NONE, align 8
  %311 = ptrtoint i8* %310 to i64
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 1
  store i64 %311, i64* %314, align 8
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pushed_p, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 -1
  store %struct.TYPE_22__* %316, %struct.TYPE_22__** @pushed_p, align 8
  %317 = load i32, i32* @qtrue, align 4
  store i32 %317, i32* %5, align 4
  br label %320

318:                                              ; preds = %294
  %319 = load i32, i32* @qfalse, align 4
  store i32 %319, i32* %5, align 4
  br label %320

320:                                              ; preds = %318, %309, %263, %33
  %321 = load i32, i32* %5, align 4
  ret i32 %321
}

declare dso_local i32 @G_Error(i8*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @G_CreateRotationMatrix(i32*, i32**) #1

declare dso_local i32 @G_TransposeMatrix(i32**, i32**) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @G_RotatePoint(i32*, i32**) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i64 @ANGLE2SHORT(i32) #1

declare dso_local %struct.TYPE_21__* @G_TestEntityPosition(%struct.TYPE_21__*) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
