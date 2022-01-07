; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_ieee_fpe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_ieee_fpe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.pt_regs = type { i32, i32, i32, i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@FPSCR_FPU_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @ieee_fpe_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_fpe_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.task_struct*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i16*
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %4, align 2
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %34 = load i16, i16* %4, align 2
  %35 = zext i16 %34 to i32
  %36 = ashr i32 %35, 12
  %37 = and i32 %36, 15
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds i32, i32* %33, i64 1
  %39 = load i16, i16* %4, align 2
  %40 = zext i16 %39 to i32
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 15
  store i32 %42, i32* %38, align 4
  %43 = getelementptr inbounds i32, i32* %38, i64 1
  %44 = load i16, i16* %4, align 2
  %45 = zext i16 %44 to i32
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 15
  store i32 %47, i32* %43, align 4
  %48 = getelementptr inbounds i32, i32* %43, i64 1
  %49 = load i16, i16* %4, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 15
  store i32 %51, i32* %48, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %67, label %55

55:                                               ; preds = %1
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 11
  br i1 %66, label %67, label %74

67:                                               ; preds = %63, %1
  %68 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 4
  %72 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %63, %59, %55
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %82, label %103

82:                                               ; preds = %78, %74
  %83 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 4
  %87 = load i16, i16* %4, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 4095
  %90 = shl i32 %89, 4
  %91 = trunc i32 %90 to i16
  %92 = sext i16 %91 to i32
  %93 = ashr i32 %92, 3
  %94 = add nsw i32 %86, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %6, align 8
  %96 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i16*
  %102 = load i16, i16* %101, align 2
  store i16 %102, i16* %5, align 2
  br label %283

103:                                              ; preds = %78
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 13
  br i1 %110, label %111, label %144

111:                                              ; preds = %107
  %112 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 4
  %122 = load i16, i16* %4, align 2
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, 255
  %125 = trunc i32 %124 to i8
  %126 = sext i8 %125 to i32
  %127 = shl i32 %126, 1
  %128 = add nsw i32 %121, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %6, align 8
  br label %136

130:                                              ; preds = %111
  %131 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %130, %117
  %137 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %138 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i16*
  %143 = load i16, i16* %142, align 2
  store i16 %143, i16* %5, align 2
  br label %282

144:                                              ; preds = %107, %103
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = icmp eq i32 %146, 8
  br i1 %147, label %148, label %185

148:                                              ; preds = %144
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 15
  br i1 %151, label %152, label %185

152:                                              ; preds = %148
  %153 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %160 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %6, align 8
  br label %177

164:                                              ; preds = %152
  %165 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %166 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 4
  %169 = load i16, i16* %4, align 2
  %170 = zext i16 %169 to i32
  %171 = and i32 %170, 255
  %172 = trunc i32 %171 to i8
  %173 = sext i8 %172 to i32
  %174 = shl i32 %173, 1
  %175 = add nsw i32 %168, %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %6, align 8
  br label %177

177:                                              ; preds = %164, %158
  %178 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i16*
  %184 = load i16, i16* %183, align 2
  store i16 %184, i16* %5, align 2
  br label %281

185:                                              ; preds = %148, %144
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %187 = load i32, i32* %186, align 16
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %189, label %217

189:                                              ; preds = %185
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 11
  br i1 %192, label %193, label %217

193:                                              ; preds = %189
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %217

201:                                              ; preds = %197, %193
  %202 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %203 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %202, i32 0, i32 3
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %204, i64 %207
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %6, align 8
  %210 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %211 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i16*
  %216 = load i16, i16* %215, align 2
  store i16 %216, i16* %5, align 2
  br label %280

217:                                              ; preds = %197, %189, %185
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %219 = load i32, i32* %218, align 16
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %255

221:                                              ; preds = %217
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 3
  br i1 %224, label %225, label %255

225:                                              ; preds = %221
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %255

233:                                              ; preds = %229, %225
  %234 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %235 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 4
  %238 = sext i32 %237 to i64
  %239 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %240 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %239, i32 0, i32 3
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %241, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = add i64 %238, %246
  store i64 %247, i64* %6, align 8
  %248 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %249 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 2
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i16*
  %254 = load i16, i16* %253, align 2
  store i16 %254, i16* %5, align 2
  br label %279

255:                                              ; preds = %229, %221, %217
  %256 = load i16, i16* %4, align 2
  %257 = zext i16 %256 to i32
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %271

259:                                              ; preds = %255
  %260 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %261 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %6, align 8
  %264 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %265 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 2
  %268 = sext i32 %267 to i64
  %269 = inttoptr i64 %268 to i16*
  %270 = load i16, i16* %269, align 2
  store i16 %270, i16* %5, align 2
  br label %278

271:                                              ; preds = %255
  %272 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %273 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 2
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %6, align 8
  %277 = load i16, i16* %4, align 2
  store i16 %277, i16* %5, align 2
  br label %278

278:                                              ; preds = %271, %259
  br label %279

279:                                              ; preds = %278, %233
  br label %280

280:                                              ; preds = %279, %201
  br label %281

281:                                              ; preds = %280, %177
  br label %282

282:                                              ; preds = %281, %136
  br label %283

283:                                              ; preds = %282, %82
  %284 = load i16, i16* %5, align 2
  %285 = zext i16 %284 to i32
  %286 = and i32 %285, 61951
  %287 = icmp eq i32 %286, 61613
  br i1 %287, label %288, label %317

288:                                              ; preds = %283
  %289 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %289, %struct.task_struct** %8, align 8
  %290 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %291 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, 131072
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %311

299:                                              ; preds = %288
  %300 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %301 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i16, i16* %5, align 2
  %306 = zext i16 %305 to i32
  %307 = ashr i32 %306, 8
  %308 = and i32 %307, 15
  %309 = trunc i32 %308 to i16
  %310 = call i32 @denormal_to_double(%struct.TYPE_6__* %304, i16 zeroext %309)
  br label %312

311:                                              ; preds = %288
  store i32 0, i32* %2, align 4
  br label %684

312:                                              ; preds = %299
  %313 = load i64, i64* %6, align 8
  %314 = trunc i64 %313 to i32
  %315 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %316 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  store i32 1, i32* %2, align 4
  br label %684

317:                                              ; preds = %283
  %318 = load i16, i16* %5, align 2
  %319 = zext i16 %318 to i32
  %320 = and i32 %319, 61455
  %321 = icmp eq i32 %320, 61442
  br i1 %321, label %322, label %497

322:                                              ; preds = %317
  %323 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %323, %struct.task_struct** %9, align 8
  %324 = load i16, i16* %5, align 2
  %325 = zext i16 %324 to i32
  %326 = ashr i32 %325, 8
  %327 = and i32 %326, 15
  store i32 %327, i32* %11, align 4
  %328 = load i16, i16* %5, align 2
  %329 = zext i16 %328 to i32
  %330 = ashr i32 %329, 4
  %331 = and i32 %330, 15
  store i32 %331, i32* %12, align 4
  %332 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %333 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %11, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %14, align 4
  %343 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %344 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %15, align 4
  %354 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %355 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  store i32 %360, i32* %10, align 4
  %361 = load i32, i32* %10, align 4
  %362 = and i32 %361, 524288
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %10, align 4
  %364 = and i32 %363, 131072
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %451

366:                                              ; preds = %322
  %367 = load i32, i32* %13, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %451

369:                                              ; preds = %366
  %370 = load i32, i32* %14, align 4
  %371 = and i32 %370, 2147483647
  %372 = icmp ult i32 %371, 1048576
  br i1 %372, label %377, label %373

373:                                              ; preds = %369
  %374 = load i32, i32* %15, align 4
  %375 = and i32 %374, 2147483647
  %376 = icmp ult i32 %375, 1048576
  br i1 %376, label %377, label %451

377:                                              ; preds = %373, %369
  %378 = load i32, i32* %14, align 4
  %379 = zext i32 %378 to i64
  %380 = shl i64 %379, 32
  %381 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %382 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %11, align 4
  %389 = add nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %387, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  %394 = or i64 %380, %393
  store i64 %394, i64* %16, align 8
  %395 = load i32, i32* %15, align 4
  %396 = zext i32 %395 to i64
  %397 = shl i64 %396, 32
  %398 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %399 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 1
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %12, align 4
  %406 = add nsw i32 %405, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  %411 = or i64 %397, %410
  store i64 %411, i64* %17, align 8
  %412 = load i32, i32* %14, align 4
  %413 = and i32 %412, 2147483647
  %414 = icmp uge i32 %413, 1048576
  br i1 %414, label %415, label %419

415:                                              ; preds = %377
  %416 = load i64, i64* %17, align 8
  %417 = load i64, i64* %16, align 8
  %418 = call i64 @denormal_muld(i64 %416, i64 %417)
  store i64 %418, i64* %16, align 8
  br label %423

419:                                              ; preds = %377
  %420 = load i64, i64* %16, align 8
  %421 = load i64, i64* %17, align 8
  %422 = call i64 @denormal_muld(i64 %420, i64 %421)
  store i64 %422, i64* %16, align 8
  br label %423

423:                                              ; preds = %419, %415
  %424 = load i64, i64* %16, align 8
  %425 = ashr i64 %424, 32
  %426 = trunc i64 %425 to i32
  %427 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %428 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_4__*, %struct.TYPE_4__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 1
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %11, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  store i32 %426, i32* %436, align 4
  %437 = load i64, i64* %16, align 8
  %438 = and i64 %437, 4294967295
  %439 = trunc i64 %438 to i32
  %440 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %441 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %11, align 4
  %448 = add nsw i32 %447, 1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %446, i64 %449
  store i32 %439, i32* %450, align 4
  br label %492

451:                                              ; preds = %373, %366, %322
  %452 = load i32, i32* %10, align 4
  %453 = and i32 %452, 131072
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %490

455:                                              ; preds = %451
  %456 = load i32, i32* %13, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %490, label %458

458:                                              ; preds = %455
  %459 = load i32, i32* %14, align 4
  %460 = and i32 %459, 2147483647
  %461 = icmp ult i32 %460, 8388608
  br i1 %461, label %466, label %462

462:                                              ; preds = %458
  %463 = load i32, i32* %15, align 4
  %464 = and i32 %463, 2147483647
  %465 = icmp ult i32 %464, 8388608
  br i1 %465, label %466, label %490

466:                                              ; preds = %462, %458
  %467 = load i32, i32* %14, align 4
  %468 = and i32 %467, 2147483647
  %469 = icmp uge i32 %468, 8388608
  br i1 %469, label %470, label %474

470:                                              ; preds = %466
  %471 = load i32, i32* %15, align 4
  %472 = load i32, i32* %14, align 4
  %473 = call i32 @denormal_mulf(i32 %471, i32 %472)
  store i32 %473, i32* %14, align 4
  br label %478

474:                                              ; preds = %466
  %475 = load i32, i32* %14, align 4
  %476 = load i32, i32* %15, align 4
  %477 = call i32 @denormal_mulf(i32 %475, i32 %476)
  store i32 %477, i32* %14, align 4
  br label %478

478:                                              ; preds = %474, %470
  %479 = load i32, i32* %14, align 4
  %480 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %481 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 1
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* %11, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  store i32 %479, i32* %489, align 4
  br label %491

490:                                              ; preds = %462, %455, %451
  store i32 0, i32* %2, align 4
  br label %684

491:                                              ; preds = %478
  br label %492

492:                                              ; preds = %491, %423
  %493 = load i64, i64* %6, align 8
  %494 = trunc i64 %493 to i32
  %495 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %496 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %495, i32 0, i32 0
  store i32 %494, i32* %496, align 8
  store i32 1, i32* %2, align 4
  br label %684

497:                                              ; preds = %317
  %498 = load i16, i16* %5, align 2
  %499 = zext i16 %498 to i32
  %500 = and i32 %499, 61454
  %501 = icmp eq i32 %500, 61440
  br i1 %501, label %502, label %681

502:                                              ; preds = %497
  %503 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %503, %struct.task_struct** %18, align 8
  %504 = load i16, i16* %5, align 2
  %505 = zext i16 %504 to i32
  %506 = ashr i32 %505, 8
  %507 = and i32 %506, 15
  store i32 %507, i32* %20, align 4
  %508 = load i16, i16* %5, align 2
  %509 = zext i16 %508 to i32
  %510 = ashr i32 %509, 4
  %511 = and i32 %510, 15
  store i32 %511, i32* %21, align 4
  %512 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %513 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 0
  %515 = load %struct.TYPE_4__*, %struct.TYPE_4__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %516, i32 0, i32 1
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* %20, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32, i32* %521, align 4
  store i32 %522, i32* %23, align 4
  %523 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %524 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %524, i32 0, i32 0
  %526 = load %struct.TYPE_4__*, %struct.TYPE_4__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 1
  %529 = load i32*, i32** %528, align 8
  %530 = load i32, i32* %21, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %529, i64 %531
  %533 = load i32, i32* %532, align 4
  store i32 %533, i32* %24, align 4
  %534 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %535 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 0
  %537 = load %struct.TYPE_4__*, %struct.TYPE_4__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  store i32 %540, i32* %19, align 4
  %541 = load i32, i32* %19, align 4
  %542 = and i32 %541, 524288
  store i32 %542, i32* %22, align 4
  %543 = load i32, i32* %19, align 4
  %544 = and i32 %543, 131072
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %633

546:                                              ; preds = %502
  %547 = load i32, i32* %22, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %633

549:                                              ; preds = %546
  %550 = load i32, i32* %23, align 4
  %551 = and i32 %550, 2147483647
  %552 = icmp ult i32 %551, 1048576
  br i1 %552, label %557, label %553

553:                                              ; preds = %549
  %554 = load i32, i32* %24, align 4
  %555 = and i32 %554, 2147483647
  %556 = icmp ult i32 %555, 1048576
  br i1 %556, label %557, label %633

557:                                              ; preds = %553, %549
  %558 = load i32, i32* %23, align 4
  %559 = zext i32 %558 to i64
  %560 = shl i64 %559, 32
  %561 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %562 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_4__*, %struct.TYPE_4__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i32 0, i32 1
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* %20, align 4
  %569 = add nsw i32 %568, 1
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %567, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = zext i32 %572 to i64
  %574 = or i64 %560, %573
  store i64 %574, i64* %25, align 8
  %575 = load i32, i32* %24, align 4
  %576 = zext i32 %575 to i64
  %577 = shl i64 %576, 32
  %578 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %579 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %579, i32 0, i32 0
  %581 = load %struct.TYPE_4__*, %struct.TYPE_4__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %582, i32 0, i32 1
  %584 = load i32*, i32** %583, align 8
  %585 = load i32, i32* %21, align 4
  %586 = add nsw i32 %585, 1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %584, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  %591 = or i64 %577, %590
  store i64 %591, i64* %26, align 8
  %592 = load i16, i16* %5, align 2
  %593 = zext i16 %592 to i32
  %594 = and i32 %593, 61455
  %595 = icmp eq i32 %594, 61440
  br i1 %595, label %596, label %600

596:                                              ; preds = %557
  %597 = load i64, i64* %25, align 8
  %598 = load i64, i64* %26, align 8
  %599 = call i64 @denormal_addd(i64 %597, i64 %598)
  store i64 %599, i64* %25, align 8
  br label %605

600:                                              ; preds = %557
  %601 = load i64, i64* %25, align 8
  %602 = load i64, i64* %26, align 8
  %603 = xor i64 %602, -9223372036854775808
  %604 = call i64 @denormal_addd(i64 %601, i64 %603)
  store i64 %604, i64* %25, align 8
  br label %605

605:                                              ; preds = %600, %596
  %606 = load i64, i64* %25, align 8
  %607 = ashr i64 %606, 32
  %608 = trunc i64 %607 to i32
  %609 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %610 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %610, i32 0, i32 0
  %612 = load %struct.TYPE_4__*, %struct.TYPE_4__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %613, i32 0, i32 1
  %615 = load i32*, i32** %614, align 8
  %616 = load i32, i32* %20, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i32, i32* %615, i64 %617
  store i32 %608, i32* %618, align 4
  %619 = load i64, i64* %25, align 8
  %620 = and i64 %619, 4294967295
  %621 = trunc i64 %620 to i32
  %622 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %623 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %623, i32 0, i32 0
  %625 = load %struct.TYPE_4__*, %struct.TYPE_4__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %626, i32 0, i32 1
  %628 = load i32*, i32** %627, align 8
  %629 = load i32, i32* %20, align 4
  %630 = add nsw i32 %629, 1
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i32, i32* %628, i64 %631
  store i32 %621, i32* %632, align 4
  br label %676

633:                                              ; preds = %553, %546, %502
  %634 = load i32, i32* %19, align 4
  %635 = and i32 %634, 131072
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %674

637:                                              ; preds = %633
  %638 = load i32, i32* %22, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %674, label %640

640:                                              ; preds = %637
  %641 = load i32, i32* %23, align 4
  %642 = and i32 %641, 2147483647
  %643 = icmp ult i32 %642, 8388608
  br i1 %643, label %648, label %644

644:                                              ; preds = %640
  %645 = load i32, i32* %24, align 4
  %646 = and i32 %645, 2147483647
  %647 = icmp ult i32 %646, 8388608
  br i1 %647, label %648, label %674

648:                                              ; preds = %644, %640
  %649 = load i16, i16* %5, align 2
  %650 = zext i16 %649 to i32
  %651 = and i32 %650, 61455
  %652 = icmp eq i32 %651, 61440
  br i1 %652, label %653, label %657

653:                                              ; preds = %648
  %654 = load i32, i32* %23, align 4
  %655 = load i32, i32* %24, align 4
  %656 = call i32 @denormal_addf(i32 %654, i32 %655)
  store i32 %656, i32* %23, align 4
  br label %662

657:                                              ; preds = %648
  %658 = load i32, i32* %23, align 4
  %659 = load i32, i32* %24, align 4
  %660 = xor i32 %659, -2147483648
  %661 = call i32 @denormal_addf(i32 %658, i32 %660)
  store i32 %661, i32* %23, align 4
  br label %662

662:                                              ; preds = %657, %653
  %663 = load i32, i32* %23, align 4
  %664 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %665 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %665, i32 0, i32 0
  %667 = load %struct.TYPE_4__*, %struct.TYPE_4__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %667, i32 0, i32 0
  %669 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %668, i32 0, i32 1
  %670 = load i32*, i32** %669, align 8
  %671 = load i32, i32* %20, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %670, i64 %672
  store i32 %663, i32* %673, align 4
  br label %675

674:                                              ; preds = %644, %637, %633
  store i32 0, i32* %2, align 4
  br label %684

675:                                              ; preds = %662
  br label %676

676:                                              ; preds = %675, %605
  %677 = load i64, i64* %6, align 8
  %678 = trunc i64 %677 to i32
  %679 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %680 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %679, i32 0, i32 0
  store i32 %678, i32* %680, align 8
  store i32 1, i32* %2, align 4
  br label %684

681:                                              ; preds = %497
  br label %682

682:                                              ; preds = %681
  br label %683

683:                                              ; preds = %682
  store i32 0, i32* %2, align 4
  br label %684

684:                                              ; preds = %683, %676, %674, %492, %490, %312, %311
  %685 = load i32, i32* %2, align 4
  ret i32 %685
}

declare dso_local i32 @denormal_to_double(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i64 @denormal_muld(i64, i64) #1

declare dso_local i32 @denormal_mulf(i32, i32) #1

declare dso_local i64 @denormal_addd(i64, i64) #1

declare dso_local i32 @denormal_addf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
