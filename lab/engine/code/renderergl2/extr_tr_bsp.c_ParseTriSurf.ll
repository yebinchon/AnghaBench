; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_ParseTriSurf.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_ParseTriSurf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32* (i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*)* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__*, %struct.TYPE_11__, i32*, i64 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32, i32*, i32, i32*, i32 }

@LIGHTMAP_BY_VERTEX = common dso_local global i32 0, align 4
@r_singleShader = common dso_local global %struct.TYPE_17__* null, align 8
@tr = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@SF_TRIANGLES = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@CULLINFO_BOX = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Bad index in face surface\00", align 1
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Trisurf has bad triangles, originally shader %s %d tris %d verts, now %d tris\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, float*, %struct.TYPE_13__*, i32*)* @ParseTriSurf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseTriSurf(%struct.TYPE_14__* %0, i32* %1, float* %2, %struct.TYPE_13__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i32*], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LittleLong(i32 %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LIGHTMAP_BY_VERTEX, align 4
  %31 = call %struct.TYPE_18__* @ShaderForShaderNum(i32 %29, i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %33, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_singleShader, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %5
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 0), align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %48, align 8
  br label %49

49:                                               ; preds = %45, %38, %5
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @LittleLong(i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LittleLong(i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = bitcast i8* %61 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %11, align 8
  %63 = load i32, i32* @SF_TRIANGLES, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32* (i32, i32)*, i32* (i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 0), align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @h_low, align 4
  %75 = call i32* %69(i32 %73, i32 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32* (i32, i32)*, i32* (i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 0), align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @h_low, align 4
  %87 = call i32* %81(i32 %85, i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = bitcast %struct.TYPE_12__* %90 to i32*
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* @CULLINFO_BOX, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ClearBounds(i32 %103, i32 %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @LittleLong(i32 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %7, align 8
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %153, %49
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load float*, float** %8, align 8
  %134 = icmp ne float* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %122
  %136 = load float*, float** %8, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %139, %140
  %142 = mul nsw i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %136, i64 %143
  br label %146

145:                                              ; preds = %122
  br label %146

146:                                              ; preds = %145, %135
  %147 = phi float* [ %144, %135 ], [ null, %145 ]
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @LoadDrawVertToSrfVert(i32* %128, i32* %132, i32 -1, float* %147, i32* %151)
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %118

156:                                              ; preds = %118
  store i32 0, i32* %17, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @LittleLong(i32 %159)
  %161 = load i32*, i32** %10, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %12, align 8
  br label %167

167:                                              ; preds = %233, %156
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %238

171:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %200, %171
  %173 = load i32, i32* %14, align 4
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %203

175:                                              ; preds = %172
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @LittleLong(i32 %182)
  %184 = load i32*, i32** %12, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %175
  %196 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 2), align 8
  %197 = load i32, i32* @ERR_DROP, align 4
  %198 = call i32 %196(i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %199

199:                                              ; preds = %195, %175
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %172

203:                                              ; preds = %172
  %204 = load i32*, i32** %12, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %12, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %227, label %211

211:                                              ; preds = %203
  %212 = load i32*, i32** %12, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %12, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %227, label %219

219:                                              ; preds = %211
  %220 = load i32*, i32** %12, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %12, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %222, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %219, %211, %203
  %228 = load i32*, i32** %12, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 -3
  store i32* %229, i32** %12, align 8
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %17, align 4
  br label %232

232:                                              ; preds = %227, %219
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 3
  store i32 %235, i32* %13, align 4
  %236 = load i32*, i32** %12, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 3
  store i32* %237, i32** %12, align 8
  br label %167

238:                                              ; preds = %167
  %239 = load i32, i32* %17, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %263

241:                                              ; preds = %238
  %242 = load i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 1), align 8
  %243 = load i32, i32* @PRINT_WARNING, align 4
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %16, align 4
  %250 = sdiv i32 %249, 3
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %16, align 4
  %253 = sdiv i32 %252, 3
  %254 = load i32, i32* %17, align 4
  %255 = sub nsw i32 %253, %254
  %256 = call i32 %242(i32 %243, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %248, i32 %250, i32 %251, i32 %255)
  %257 = load i32, i32* %17, align 4
  %258 = mul nsw i32 %257, 3
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %241, %238
  store i32 0, i32* %13, align 4
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  store i32* %266, i32** %12, align 8
  br label %267

267:                                              ; preds = %301, %263
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %16, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %306

271:                                              ; preds = %267
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = load i32*, i32** %12, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %274, i64 %278
  %280 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  store i32* %279, i32** %280, align 16
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load i32*, i32** %12, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %283, i64 %287
  %289 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 1
  store i32* %288, i32** %289, align 8
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = load i32*, i32** %12, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %292, i64 %296
  %298 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 2
  store i32* %297, i32** %298, align 16
  %299 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %300 = call i32 @R_CalcTangentVectors(i32** %299)
  br label %301

301:                                              ; preds = %271
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, 3
  store i32 %303, i32* %13, align 4
  %304 = load i32*, i32** %12, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 3
  store i32* %305, i32** %12, align 8
  br label %267

306:                                              ; preds = %267
  ret void
}

declare dso_local i32 @LittleLong(i32) #1

declare dso_local %struct.TYPE_18__* @ShaderForShaderNum(i32, i32) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @LoadDrawVertToSrfVert(i32*, i32*, i32, float*, i32*) #1

declare dso_local i32 @R_CalcTangentVectors(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
