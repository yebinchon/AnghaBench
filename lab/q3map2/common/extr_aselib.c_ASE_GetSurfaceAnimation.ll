; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_GetSurfaceAnimation.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_GetSurfaceAnimation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_11__*, %struct.TYPE_18__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64**, i64**, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32**, i32** }

@ase = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@SYS_WRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"WARNING: ASE_GetSurfaceAnimation maxFrames > numFramesInAnimation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ASE_GetSurfaceAnimation(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ase, i32 0, i32 1), align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 %23
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %12, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %365

31:                                               ; preds = %5
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %14, align 4
  br label %54

43:                                               ; preds = %38, %31
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @SYS_WRN, align 4
  %52 = call i32 @Sys_FPrintf(i32 %51, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  %63 = sub nsw i32 %58, %62
  store i32 %63, i32* %15, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 24, %70
  %72 = trunc i64 %71 to i32
  %73 = call i8* @calloc(i32 %72, i32 1)
  %74 = bitcast i8* %73 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %360, %66
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %363

79:                                               ; preds = %75
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i64 %85
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %19, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %99

89:                                               ; preds = %79
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %360

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %79
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strcpy(i32 %105, i32 %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ase, i32 0, i32 0), align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @strcpy(i32 %115, i32 %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = mul i64 4, %133
  %135 = trunc i64 %134 to i32
  %136 = call i8* @calloc(i32 %135, i32 1)
  %137 = bitcast i8* %136 to %struct.TYPE_14__*
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %142, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  store i32 0, i32* %18, align 4
  br label %157

157:                                              ; preds = %354, %99
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %158, %167
  br i1 %168, label %169, label %357

169:                                              ; preds = %157
  store i32 0, i32* %20, align 4
  br label %170

170:                                              ; preds = %350, %169
  %171 = load i32, i32* %20, align 4
  %172 = icmp slt i32 %171, 3
  br i1 %172, label %173, label %353

173:                                              ; preds = %170
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load i64**, i64*** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64*, i64** %179, i64 %181
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %190, i32* %206, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i64**, i64*** %211, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64*, i64** %212, i64 %214
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 1
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %20, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  store i32 %223, i32* %239, align 4
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  %245 = load i64**, i64*** %244, align 8
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64*, i64** %245, i64 %247
  %249 = load i64*, i64** %248, align 8
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 2
  store i32 %256, i32* %272, align 4
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = icmp ne %struct.TYPE_15__* %275, null
  br i1 %276, label %277, label %349

277:                                              ; preds = %173
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 2
  %280 = load i64**, i64*** %279, align 8
  %281 = icmp ne i64** %280, null
  br i1 %281, label %282, label %349

282:                                              ; preds = %277
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 2
  %288 = load i64**, i64*** %287, align 8
  %289 = load i32, i32* %18, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64*, i64** %288, i64 %290
  %292 = load i64*, i64** %291, align 8
  %293 = load i32, i32* %20, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %301 = load i32, i32* %17, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %304, align 8
  %306 = load i32, i32* %18, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load i32**, i32*** %309, align 8
  %311 = load i32, i32* %20, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  store i32 %299, i32* %315, align 4
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 3
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %317, align 8
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 2
  %321 = load i64**, i64*** %320, align 8
  %322 = load i32, i32* %18, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64*, i64** %321, i64 %323
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %20, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %334 = load i32, i32* %17, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %337, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = load i32**, i32*** %342, align 8
  %344 = load i32, i32* %20, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %343, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  store i32 %332, i32* %348, align 4
  br label %349

349:                                              ; preds = %282, %277, %173
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %20, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %20, align 4
  br label %170

353:                                              ; preds = %170
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %18, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %18, align 4
  br label %157

357:                                              ; preds = %157
  %358 = load i32, i32* %17, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %17, align 4
  br label %360

360:                                              ; preds = %357, %97
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %16, align 4
  br label %75

363:                                              ; preds = %75
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %364, %struct.TYPE_16__** %6, align 8
  br label %365

365:                                              ; preds = %363, %30
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %366
}

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
