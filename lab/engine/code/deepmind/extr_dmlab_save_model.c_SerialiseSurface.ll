; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_SerialiseSurface.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_SerialiseSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 (i8*, i64)*, i64 (i8*, i64)*, i64 (i8*, i64)*, i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32, i32)*, i32 (i8*, i64, i32, i32)* }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32, i8* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_10__ = type { i8** }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { i8*, i8** }

@MD3_IDENT = common dso_local global i32 0, align 4
@MAX_QPATH = common dso_local global i32 0, align 4
@MD3_XYZ_SCALE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_14__*, i8*, %struct.TYPE_11__*, i32*)* @SerialiseSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SerialiseSurface(i64 %0, %struct.TYPE_14__* %1, i8* %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca [3 x i32], align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca [2 x float], align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_9__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca i16, align 2
  %34 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32* %4, i32** %10, align 8
  %35 = load i32, i32* @MD3_IDENT, align 4
  %36 = call i8* @LittleLong(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 8
  %41 = load i32 (i8*, i64, i32, i32)*, i32 (i8*, i64, i32, i32)** %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @MAX_QPATH, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(i8* %42, i64 %43, i32 %44, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 9
  store i64 0, i64* %50, align 8
  %51 = call i8* @LittleLong(i32 1)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64 (i8*, i64)*, i64 (i8*, i64)** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 %56(i8* %57, i64 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i8* @LittleLong(i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64 (i8*, i64)*, i64 (i8*, i64)** %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i64 %67(i8* %68, i64 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i8* @LittleLong(i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i64 (i8*, i64)*, i64 (i8*, i64)** %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 %78(i8* %79, i64 %80)
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i8* @LittleLong(i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  store i64 96, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i8* @LittleLong(i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %11, align 8
  %94 = mul i64 %93, 16
  %95 = add i64 %92, %94
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i8* @LittleLong(i32 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %13, align 8
  %103 = mul i64 %102, 8
  %104 = add i64 %101, %103
  store i64 %104, i64* %16, align 8
  %105 = load i64, i64* %16, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i8* @LittleLong(i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %12, align 8
  %112 = mul i64 %111, 8
  %113 = add i64 %110, %112
  store i64 %113, i64* %17, align 8
  %114 = load i64, i64* %17, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i8* @LittleLong(i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %12, align 8
  %121 = mul i64 %120, 16
  %122 = add i64 %119, %121
  store i64 %122, i64* %18, align 8
  %123 = load i64, i64* %18, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i8* @LittleLong(i32 %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %129 = bitcast %struct.TYPE_11__* %128 to i32*
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = bitcast i32* %131 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %132, %struct.TYPE_13__** %19, align 8
  store i64 0, i64* %20, align 8
  br label %133

133:                                              ; preds = %155, %5
  %134 = load i64, i64* %20, align 8
  %135 = load i64, i64* %11, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %133
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 7
  %140 = load i32 (i8*, i64, i64, i32, i32)*, i32 (i8*, i64, i64, i32, i32)** %139, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %20, align 8
  %144 = load i32, i32* @MAX_QPATH, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %146 = load i64, i64* %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 %140(i8* %141, i64 %142, i64 %143, i32 %144, i32 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %152 = load i64, i64* %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %137
  %156 = load i64, i64* %20, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %20, align 8
  br label %133

158:                                              ; preds = %133
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %160 = bitcast %struct.TYPE_11__* %159 to i32*
  %161 = load i64, i64* %15, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = bitcast i32* %162 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %163, %struct.TYPE_10__** %21, align 8
  store i64 0, i64* %22, align 8
  br label %164

164:                                              ; preds = %196, %158
  %165 = load i64, i64* %22, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %164
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 6
  %171 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %170, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* %22, align 8
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %176 = call i32 %171(i8* %172, i64 %173, i64 %174, i32* %175)
  store i64 0, i64* %24, align 8
  br label %177

177:                                              ; preds = %192, %168
  %178 = load i64, i64* %24, align 8
  %179 = icmp ult i64 %178, 3
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load i64, i64* %24, align 8
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @LittleLong(i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %186 = load i64, i64* %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = load i64, i64* %24, align 8
  %191 = getelementptr inbounds i8*, i8** %189, i64 %190
  store i8* %184, i8** %191, align 8
  br label %192

192:                                              ; preds = %180
  %193 = load i64, i64* %24, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %24, align 8
  br label %177

195:                                              ; preds = %177
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %22, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %22, align 8
  br label %164

199:                                              ; preds = %164
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %201 = bitcast %struct.TYPE_11__* %200 to i32*
  %202 = load i64, i64* %16, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = bitcast i32* %203 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %204, %struct.TYPE_12__** %25, align 8
  store i64 0, i64* %26, align 8
  br label %205

205:                                              ; preds = %237, %199
  %206 = load i64, i64* %26, align 8
  %207 = load i64, i64* %12, align 8
  %208 = icmp ult i64 %206, %207
  br i1 %208, label %209, label %240

209:                                              ; preds = %205
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 5
  %212 = load i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, float*)** %211, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load i64, i64* %26, align 8
  %216 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 0
  %217 = call i32 %212(i8* %213, i64 %214, i64 %215, float* %216)
  store i64 0, i64* %28, align 8
  br label %218

218:                                              ; preds = %233, %209
  %219 = load i64, i64* %28, align 8
  %220 = icmp ult i64 %219, 2
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = load i64, i64* %28, align 8
  %223 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 %222
  %224 = load float, float* %223, align 4
  %225 = call i32 @LittleFloat(float %224)
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %227 = load i64, i64* %26, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* %28, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %225, i32* %232, align 4
  br label %233

233:                                              ; preds = %221
  %234 = load i64, i64* %28, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %28, align 8
  br label %218

236:                                              ; preds = %218
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %26, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %26, align 8
  br label %205

240:                                              ; preds = %205
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %242 = bitcast %struct.TYPE_11__* %241 to i32*
  %243 = load i64, i64* %17, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = bitcast i32* %244 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %245, %struct.TYPE_9__** %29, align 8
  store i64 0, i64* %30, align 8
  br label %246

246:                                              ; preds = %301, %240
  %247 = load i64, i64* %30, align 8
  %248 = load i64, i64* %12, align 8
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %250, label %304

250:                                              ; preds = %246
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 4
  %253 = load i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, float*)** %252, align 8
  %254 = load i8*, i8** %8, align 8
  %255 = load i64, i64* %6, align 8
  %256 = load i64, i64* %30, align 8
  %257 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %258 = call i32 %253(i8* %254, i64 %255, i64 %256, float* %257)
  store i64 0, i64* %34, align 8
  br label %259

259:                                              ; preds = %277, %250
  %260 = load i64, i64* %34, align 8
  %261 = icmp ult i64 %260, 3
  br i1 %261, label %262, label %280

262:                                              ; preds = %259
  %263 = load i64, i64* %34, align 8
  %264 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 %263
  %265 = load float, float* %264, align 4
  %266 = load float, float* @MD3_XYZ_SCALE, align 4
  %267 = fdiv float %265, %266
  %268 = fptosi float %267 to i16
  %269 = call i8* @LittleShort(i16 signext %268)
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %271 = load i64, i64* %30, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i8**, i8*** %273, align 8
  %275 = load i64, i64* %34, align 8
  %276 = getelementptr inbounds i8*, i8** %274, i64 %275
  store i8* %269, i8** %276, align 8
  br label %277

277:                                              ; preds = %262
  %278 = load i64, i64* %34, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %34, align 8
  br label %259

280:                                              ; preds = %259
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  %283 = load i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, float*)** %282, align 8
  %284 = load i8*, i8** %8, align 8
  %285 = load i64, i64* %6, align 8
  %286 = load i64, i64* %30, align 8
  %287 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %288 = call i32 %283(i8* %284, i64 %285, i64 %286, float* %287)
  %289 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %290 = bitcast i16* %33 to i32*
  %291 = call i32 @NormalToLatLong(float* %289, i32* %290)
  %292 = load i16, i16* %33, align 2
  %293 = call i8* @LittleShort(i16 signext %292)
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %295 = load i64, i64* %30, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  store i8* %293, i8** %297, align 8
  %298 = load i32*, i32** %10, align 8
  %299 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %300 = call i32 @AABBExtendByPoint(i32* %298, float* %299)
  br label %301

301:                                              ; preds = %280
  %302 = load i64, i64* %30, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %30, align 8
  br label %246

304:                                              ; preds = %246
  ret void
}

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @LittleFloat(float) #1

declare dso_local i8* @LittleShort(i16 signext) #1

declare dso_local i32 @NormalToLatLong(float*, i32*) #1

declare dso_local i32 @AABBExtendByPoint(i32*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
