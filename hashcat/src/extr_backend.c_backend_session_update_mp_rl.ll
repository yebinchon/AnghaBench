; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_backend_session_update_mp_rl.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_backend_session_update_mp_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i64*, i64* }
%struct.TYPE_11__ = type { i32, i32 }

@CL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @backend_session_update_mp_rl(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %10, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %312

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %312

39:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %308, %39
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %311

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %12, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %308

58:                                               ; preds = %46
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %308

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 18
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 3
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 17
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 3
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %121

92:                                               ; preds = %64
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 16
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @hc_cuMemcpyHtoD(%struct.TYPE_13__* %93, i32 %96, i32 %99, i32 %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %312

106:                                              ; preds = %92
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 15
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @hc_cuMemcpyHtoD(%struct.TYPE_13__* %107, i32 %110, i32 %113, i32 %116)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  store i32 -1, i32* %4, align 4
  br label %312

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %64
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %307

126:                                              ; preds = %121
  store i32 3, i32* %13, align 4
  br label %127

127:                                              ; preds = %147, %126
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 14
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 13
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @hc_clSetKernelArg(%struct.TYPE_13__* %131, i32 %134, i32 %135, i32 4, i32 %142)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %146

145:                                              ; preds = %130
  store i32 -1, i32* %4, align 4
  br label %312

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %127

150:                                              ; preds = %127
  store i32 4, i32* %14, align 4
  br label %151

151:                                              ; preds = %171, %150
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 14
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 13
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @hc_clSetKernelArg(%struct.TYPE_13__* %155, i32 %158, i32 %159, i32 4, i32 %166)
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %312

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %151

174:                                              ; preds = %151
  store i32 9, i32* %15, align 4
  br label %175

175:                                              ; preds = %195, %174
  %176 = load i32, i32* %15, align 4
  %177 = icmp slt i32 %176, 9
  br i1 %177, label %178, label %198

178:                                              ; preds = %175
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 14
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 13
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @hc_clSetKernelArg(%struct.TYPE_13__* %179, i32 %182, i32 %183, i32 4, i32 %190)
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  store i32 -1, i32* %4, align 4
  br label %312

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %175

198:                                              ; preds = %175
  store i32 3, i32* %16, align 4
  br label %199

199:                                              ; preds = %219, %198
  %200 = load i32, i32* %16, align 4
  %201 = icmp slt i32 %200, 4
  br i1 %201, label %202, label %222

202:                                              ; preds = %199
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 12
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 11
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @hc_clSetKernelArg(%struct.TYPE_13__* %203, i32 %206, i32 %207, i32 4, i32 %214)
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %218

217:                                              ; preds = %202
  store i32 -1, i32* %4, align 4
  br label %312

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %199

222:                                              ; preds = %199
  store i32 4, i32* %17, align 4
  br label %223

223:                                              ; preds = %243, %222
  %224 = load i32, i32* %17, align 4
  %225 = icmp slt i32 %224, 7
  br i1 %225, label %226, label %246

226:                                              ; preds = %223
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %17, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 11
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @hc_clSetKernelArg(%struct.TYPE_13__* %227, i32 %230, i32 %231, i32 4, i32 %238)
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %242

241:                                              ; preds = %226
  store i32 -1, i32* %4, align 4
  br label %312

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %17, align 4
  br label %223

246:                                              ; preds = %223
  store i32 8, i32* %18, align 4
  br label %247

247:                                              ; preds = %267, %246
  %248 = load i32, i32* %18, align 4
  %249 = icmp slt i32 %248, 8
  br i1 %249, label %250, label %270

250:                                              ; preds = %247
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 12
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 11
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %18, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @hc_clSetKernelArg(%struct.TYPE_13__* %251, i32 %254, i32 %255, i32 4, i32 %262)
  %264 = icmp eq i32 %263, -1
  br i1 %264, label %265, label %266

265:                                              ; preds = %250
  store i32 -1, i32* %4, align 4
  br label %312

266:                                              ; preds = %250
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %18, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %18, align 4
  br label %247

270:                                              ; preds = %247
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @CL_TRUE, align 4
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @hc_clEnqueueWriteBuffer(%struct.TYPE_13__* %271, i32 %274, i32 %277, i32 %278, i32 0, i32 %281, i32 %284, i32 0, i32* null, i32* null)
  %286 = icmp eq i32 %285, -1
  br i1 %286, label %287, label %288

287:                                              ; preds = %270
  store i32 -1, i32* %4, align 4
  br label %312

288:                                              ; preds = %270
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @CL_TRUE, align 4
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @hc_clEnqueueWriteBuffer(%struct.TYPE_13__* %289, i32 %292, i32 %295, i32 %296, i32 0, i32 %299, i32 %302, i32 0, i32* null, i32* null)
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %305, label %306

305:                                              ; preds = %288
  store i32 -1, i32* %4, align 4
  br label %312

306:                                              ; preds = %288
  br label %307

307:                                              ; preds = %306, %121
  br label %308

308:                                              ; preds = %307, %63, %57
  %309 = load i32, i32* %11, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %11, align 4
  br label %40

311:                                              ; preds = %40
  store i32 0, i32* %4, align 4
  br label %312

312:                                              ; preds = %311, %305, %287, %265, %241, %217, %193, %169, %145, %119, %105, %38, %32
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local i32 @hc_cuMemcpyHtoD(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @hc_clSetKernelArg(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @hc_clEnqueueWriteBuffer(%struct.TYPE_13__*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
