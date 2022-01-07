; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_fpu.c_ieee_fpe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_fpu.c_ieee_fpe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.pt_regs = type { i32, i32, i32, i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@FPSCR_CAUSE_ERROR = common dso_local global i32 0, align 4
@FPSCR_DBL_PRECISION = common dso_local global i32 0, align 4
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
  %27 = alloca %struct.task_struct*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.task_struct*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i16*
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %4, align 2
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = ashr i32 %48, 12
  %50 = and i32 %49, 15
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds i32, i32* %46, i64 1
  %52 = load i16, i16* %4, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 15
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds i32, i32* %51, i64 1
  %57 = load i16, i16* %4, align 2
  %58 = zext i16 %57 to i32
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 15
  store i32 %60, i32* %56, align 4
  %61 = getelementptr inbounds i32, i32* %56, i64 1
  %62 = load i16, i16* %4, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 15
  store i32 %64, i32* %61, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp eq i32 %66, 11
  br i1 %67, label %80, label %68

68:                                               ; preds = %1
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 11
  br i1 %79, label %80, label %87

80:                                               ; preds = %76, %1
  %81 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 4
  %85 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %76, %72, %68
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %116

95:                                               ; preds = %91, %87
  %96 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 4
  %100 = load i16, i16* %4, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, 4095
  %103 = shl i32 %102, 4
  %104 = trunc i32 %103 to i16
  %105 = sext i16 %104 to i32
  %106 = ashr i32 %105, 3
  %107 = add nsw i32 %99, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %6, align 8
  %109 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i16*
  %115 = load i16, i16* %114, align 2
  store i16 %115, i16* %5, align 2
  br label %298

116:                                              ; preds = %91
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %118 = load i32, i32* %117, align 16
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %157

120:                                              ; preds = %116
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 13
  br i1 %123, label %124, label %157

124:                                              ; preds = %120
  %125 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %126 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 4
  %135 = load i16, i16* %4, align 2
  %136 = zext i16 %135 to i32
  %137 = and i32 %136, 255
  %138 = trunc i32 %137 to i8
  %139 = sext i8 %138 to i32
  %140 = shl i32 %139, 1
  %141 = add nsw i32 %134, %140
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %6, align 8
  br label %149

143:                                              ; preds = %124
  %144 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %145 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %143, %130
  %150 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %151 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i16*
  %156 = load i16, i16* %155, align 2
  store i16 %156, i16* %5, align 2
  br label %297

157:                                              ; preds = %120, %116
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = icmp eq i32 %159, 8
  br i1 %160, label %161, label %198

161:                                              ; preds = %157
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 15
  br i1 %164, label %165, label %198

165:                                              ; preds = %161
  %166 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %167 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %173 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %6, align 8
  br label %190

177:                                              ; preds = %165
  %178 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 4
  %182 = load i16, i16* %4, align 2
  %183 = zext i16 %182 to i32
  %184 = and i32 %183, 255
  %185 = trunc i32 %184 to i8
  %186 = sext i8 %185 to i32
  %187 = shl i32 %186, 1
  %188 = add nsw i32 %181, %187
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %6, align 8
  br label %190

190:                                              ; preds = %177, %171
  %191 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %192 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i16*
  %197 = load i16, i16* %196, align 2
  store i16 %197, i16* %5, align 2
  br label %296

198:                                              ; preds = %161, %157
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %200 = load i32, i32* %199, align 16
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %230

202:                                              ; preds = %198
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 11
  br i1 %205, label %206, label %230

206:                                              ; preds = %202
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 2
  br i1 %213, label %214, label %230

214:                                              ; preds = %210, %206
  %215 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %216 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %215, i32 0, i32 3
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %6, align 8
  %223 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %224 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 2
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i16*
  %229 = load i16, i16* %228, align 2
  store i16 %229, i16* %5, align 2
  br label %295

230:                                              ; preds = %210, %202, %198
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %232 = load i32, i32* %231, align 16
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %268

234:                                              ; preds = %230
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 3
  br i1 %237, label %238, label %268

238:                                              ; preds = %234
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %268

246:                                              ; preds = %242, %238
  %247 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %248 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %253 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %252, i32 0, i32 3
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %254, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %251, %259
  store i64 %260, i64* %6, align 8
  %261 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %262 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i16*
  %267 = load i16, i16* %266, align 2
  store i16 %267, i16* %5, align 2
  br label %294

268:                                              ; preds = %242, %234, %230
  %269 = load i16, i16* %4, align 2
  %270 = zext i16 %269 to i32
  %271 = icmp eq i32 %270, 11
  br i1 %271, label %272, label %284

272:                                              ; preds = %268
  %273 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %274 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %6, align 8
  %277 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %278 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 2
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i16*
  %283 = load i16, i16* %282, align 2
  store i16 %283, i16* %5, align 2
  br label %293

284:                                              ; preds = %268
  %285 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %286 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = load i16, i16* %4, align 2
  %290 = call i64 @instruction_size(i16 zeroext %289)
  %291 = add i64 %288, %290
  store i64 %291, i64* %6, align 8
  %292 = load i16, i16* %4, align 2
  store i16 %292, i16* %5, align 2
  br label %293

293:                                              ; preds = %284, %272
  br label %294

294:                                              ; preds = %293, %246
  br label %295

295:                                              ; preds = %294, %214
  br label %296

296:                                              ; preds = %295, %190
  br label %297

297:                                              ; preds = %296, %149
  br label %298

298:                                              ; preds = %297, %95
  %299 = load i16, i16* %5, align 2
  %300 = zext i16 %299 to i32
  %301 = and i32 %300, 61951
  %302 = icmp eq i32 %301, 61613
  br i1 %302, label %303, label %333

303:                                              ; preds = %298
  %304 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %304, %struct.task_struct** %8, align 8
  %305 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %306 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %327

315:                                              ; preds = %303
  %316 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %317 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i16, i16* %5, align 2
  %322 = zext i16 %321 to i32
  %323 = ashr i32 %322, 8
  %324 = and i32 %323, 15
  %325 = trunc i32 %324 to i16
  %326 = call i32 @denormal_to_double(%struct.TYPE_6__* %320, i16 zeroext %325)
  br label %328

327:                                              ; preds = %303
  store i32 0, i32* %2, align 4
  br label %931

328:                                              ; preds = %315
  %329 = load i64, i64* %6, align 8
  %330 = trunc i64 %329 to i32
  %331 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %332 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 8
  store i32 1, i32* %2, align 4
  br label %931

333:                                              ; preds = %298
  %334 = load i16, i16* %5, align 2
  %335 = zext i16 %334 to i32
  %336 = and i32 %335, 61455
  %337 = icmp eq i32 %336, 61442
  br i1 %337, label %338, label %498

338:                                              ; preds = %333
  %339 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %339, %struct.task_struct** %9, align 8
  %340 = load i16, i16* %5, align 2
  %341 = zext i16 %340 to i32
  %342 = ashr i32 %341, 8
  %343 = and i32 %342, 15
  store i32 %343, i32* %11, align 4
  %344 = load i16, i16* %5, align 2
  %345 = zext i16 %344 to i32
  %346 = ashr i32 %345, 4
  %347 = and i32 %346, 15
  store i32 %347, i32* %12, align 4
  %348 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %349 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %14, align 4
  %359 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %360 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  store i32 %369, i32* %15, align 4
  %370 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %371 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  store i32 %376, i32* %10, align 4
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* @FPSCR_DBL_PRECISION, align 4
  %379 = and i32 %377, %378
  store i32 %379, i32* %13, align 4
  %380 = load i32, i32* %10, align 4
  %381 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %460

384:                                              ; preds = %338
  %385 = load i32, i32* %13, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %460

387:                                              ; preds = %384
  %388 = load i32, i32* %14, align 4
  %389 = and i32 %388, 2147483647
  %390 = icmp ult i32 %389, 1048576
  br i1 %390, label %395, label %391

391:                                              ; preds = %387
  %392 = load i32, i32* %15, align 4
  %393 = and i32 %392, 2147483647
  %394 = icmp ult i32 %393, 1048576
  br i1 %394, label %395, label %460

395:                                              ; preds = %391, %387
  %396 = load i32, i32* %14, align 4
  %397 = zext i32 %396 to i64
  %398 = shl i64 %397, 32
  %399 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %400 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %11, align 4
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = zext i32 %410 to i64
  %412 = or i64 %398, %411
  store i64 %412, i64* %16, align 8
  %413 = load i32, i32* %15, align 4
  %414 = zext i32 %413 to i64
  %415 = shl i64 %414, 32
  %416 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %417 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %12, align 4
  %424 = add nsw i32 %423, 1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = zext i32 %427 to i64
  %429 = or i64 %415, %428
  store i64 %429, i64* %17, align 8
  %430 = load i64, i64* %16, align 8
  %431 = load i64, i64* %17, align 8
  %432 = call i64 @float64_mul(i64 %430, i64 %431)
  store i64 %432, i64* %16, align 8
  %433 = load i64, i64* %16, align 8
  %434 = ashr i64 %433, 32
  %435 = trunc i64 %434 to i32
  %436 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %437 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %11, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  store i32 %435, i32* %445, align 4
  %446 = load i64, i64* %16, align 8
  %447 = and i64 %446, 4294967295
  %448 = trunc i64 %447 to i32
  %449 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %450 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_4__*, %struct.TYPE_4__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %11, align 4
  %457 = add nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  store i32 %448, i32* %459, align 4
  br label %493

460:                                              ; preds = %391, %384, %338
  %461 = load i32, i32* %10, align 4
  %462 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %491

465:                                              ; preds = %460
  %466 = load i32, i32* %13, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %491, label %468

468:                                              ; preds = %465
  %469 = load i32, i32* %14, align 4
  %470 = and i32 %469, 2147483647
  %471 = icmp ult i32 %470, 8388608
  br i1 %471, label %476, label %472

472:                                              ; preds = %468
  %473 = load i32, i32* %15, align 4
  %474 = and i32 %473, 2147483647
  %475 = icmp ult i32 %474, 8388608
  br i1 %475, label %476, label %491

476:                                              ; preds = %472, %468
  %477 = load i32, i32* %14, align 4
  %478 = load i32, i32* %15, align 4
  %479 = call i32 @float32_mul(i32 %477, i32 %478)
  store i32 %479, i32* %14, align 4
  %480 = load i32, i32* %14, align 4
  %481 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %482 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_4__*, %struct.TYPE_4__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 1
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %11, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  store i32 %480, i32* %490, align 4
  br label %492

491:                                              ; preds = %472, %465, %460
  store i32 0, i32* %2, align 4
  br label %931

492:                                              ; preds = %476
  br label %493

493:                                              ; preds = %492, %395
  %494 = load i64, i64* %6, align 8
  %495 = trunc i64 %494 to i32
  %496 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %497 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %496, i32 0, i32 0
  store i32 %495, i32* %497, align 8
  store i32 1, i32* %2, align 4
  br label %931

498:                                              ; preds = %333
  %499 = load i16, i16* %5, align 2
  %500 = zext i16 %499 to i32
  %501 = and i32 %500, 61454
  %502 = icmp eq i32 %501, 61440
  br i1 %502, label %503, label %683

503:                                              ; preds = %498
  %504 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %504, %struct.task_struct** %18, align 8
  %505 = load i16, i16* %5, align 2
  %506 = zext i16 %505 to i32
  %507 = ashr i32 %506, 8
  %508 = and i32 %507, 15
  store i32 %508, i32* %20, align 4
  %509 = load i16, i16* %5, align 2
  %510 = zext i16 %509 to i32
  %511 = ashr i32 %510, 4
  %512 = and i32 %511, 15
  store i32 %512, i32* %21, align 4
  %513 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %514 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %514, i32 0, i32 0
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i32 0, i32 1
  %519 = load i32*, i32** %518, align 8
  %520 = load i32, i32* %20, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %519, i64 %521
  %523 = load i32, i32* %522, align 4
  store i32 %523, i32* %23, align 4
  %524 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %525 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 0
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 1
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %21, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  store i32 %534, i32* %24, align 4
  %535 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %536 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i32 0, i32 0
  %538 = load %struct.TYPE_4__*, %struct.TYPE_4__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  store i32 %541, i32* %19, align 4
  %542 = load i32, i32* %19, align 4
  %543 = load i32, i32* @FPSCR_DBL_PRECISION, align 4
  %544 = and i32 %542, %543
  store i32 %544, i32* %22, align 4
  %545 = load i32, i32* %19, align 4
  %546 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %635

549:                                              ; preds = %503
  %550 = load i32, i32* %22, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %635

552:                                              ; preds = %549
  %553 = load i32, i32* %23, align 4
  %554 = and i32 %553, 2147483647
  %555 = icmp ult i32 %554, 1048576
  br i1 %555, label %560, label %556

556:                                              ; preds = %552
  %557 = load i32, i32* %24, align 4
  %558 = and i32 %557, 2147483647
  %559 = icmp ult i32 %558, 1048576
  br i1 %559, label %560, label %635

560:                                              ; preds = %556, %552
  %561 = load i32, i32* %23, align 4
  %562 = zext i32 %561 to i64
  %563 = shl i64 %562, 32
  %564 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %565 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %565, i32 0, i32 0
  %567 = load %struct.TYPE_4__*, %struct.TYPE_4__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 1
  %570 = load i32*, i32** %569, align 8
  %571 = load i32, i32* %20, align 4
  %572 = add nsw i32 %571, 1
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %570, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = zext i32 %575 to i64
  %577 = or i64 %563, %576
  store i64 %577, i64* %25, align 8
  %578 = load i32, i32* %24, align 4
  %579 = zext i32 %578 to i64
  %580 = shl i64 %579, 32
  %581 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %582 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %582, i32 0, i32 0
  %584 = load %struct.TYPE_4__*, %struct.TYPE_4__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %585, i32 0, i32 1
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %21, align 4
  %589 = add nsw i32 %588, 1
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32, i32* %587, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = zext i32 %592 to i64
  %594 = or i64 %580, %593
  store i64 %594, i64* %26, align 8
  %595 = load i16, i16* %5, align 2
  %596 = zext i16 %595 to i32
  %597 = and i32 %596, 61455
  %598 = icmp eq i32 %597, 61440
  br i1 %598, label %599, label %603

599:                                              ; preds = %560
  %600 = load i64, i64* %25, align 8
  %601 = load i64, i64* %26, align 8
  %602 = call i64 @float64_add(i64 %600, i64 %601)
  store i64 %602, i64* %25, align 8
  br label %607

603:                                              ; preds = %560
  %604 = load i64, i64* %25, align 8
  %605 = load i64, i64* %26, align 8
  %606 = call i64 @float64_sub(i64 %604, i64 %605)
  store i64 %606, i64* %25, align 8
  br label %607

607:                                              ; preds = %603, %599
  %608 = load i64, i64* %25, align 8
  %609 = ashr i64 %608, 32
  %610 = trunc i64 %609 to i32
  %611 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %612 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %612, i32 0, i32 0
  %614 = load %struct.TYPE_4__*, %struct.TYPE_4__** %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %615, i32 0, i32 1
  %617 = load i32*, i32** %616, align 8
  %618 = load i32, i32* %20, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  store i32 %610, i32* %620, align 4
  %621 = load i64, i64* %25, align 8
  %622 = and i64 %621, 4294967295
  %623 = trunc i64 %622 to i32
  %624 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %625 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %625, i32 0, i32 0
  %627 = load %struct.TYPE_4__*, %struct.TYPE_4__** %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %628, i32 0, i32 1
  %630 = load i32*, i32** %629, align 8
  %631 = load i32, i32* %20, align 4
  %632 = add nsw i32 %631, 1
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i32, i32* %630, i64 %633
  store i32 %623, i32* %634, align 4
  br label %678

635:                                              ; preds = %556, %549, %503
  %636 = load i32, i32* %19, align 4
  %637 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %638 = and i32 %636, %637
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %676

640:                                              ; preds = %635
  %641 = load i32, i32* %22, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %676, label %643

643:                                              ; preds = %640
  %644 = load i32, i32* %23, align 4
  %645 = and i32 %644, 2147483647
  %646 = icmp ult i32 %645, 8388608
  br i1 %646, label %651, label %647

647:                                              ; preds = %643
  %648 = load i32, i32* %24, align 4
  %649 = and i32 %648, 2147483647
  %650 = icmp ult i32 %649, 8388608
  br i1 %650, label %651, label %676

651:                                              ; preds = %647, %643
  %652 = load i16, i16* %5, align 2
  %653 = zext i16 %652 to i32
  %654 = and i32 %653, 61455
  %655 = icmp eq i32 %654, 61440
  br i1 %655, label %656, label %660

656:                                              ; preds = %651
  %657 = load i32, i32* %23, align 4
  %658 = load i32, i32* %24, align 4
  %659 = call i32 @float32_add(i32 %657, i32 %658)
  store i32 %659, i32* %23, align 4
  br label %664

660:                                              ; preds = %651
  %661 = load i32, i32* %23, align 4
  %662 = load i32, i32* %24, align 4
  %663 = call i32 @float32_sub(i32 %661, i32 %662)
  store i32 %663, i32* %23, align 4
  br label %664

664:                                              ; preds = %660, %656
  %665 = load i32, i32* %23, align 4
  %666 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %667 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %667, i32 0, i32 0
  %669 = load %struct.TYPE_4__*, %struct.TYPE_4__** %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %669, i32 0, i32 0
  %671 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %670, i32 0, i32 1
  %672 = load i32*, i32** %671, align 8
  %673 = load i32, i32* %20, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %672, i64 %674
  store i32 %665, i32* %675, align 4
  br label %677

676:                                              ; preds = %647, %640, %635
  store i32 0, i32* %2, align 4
  br label %931

677:                                              ; preds = %664
  br label %678

678:                                              ; preds = %677, %607
  %679 = load i64, i64* %6, align 8
  %680 = trunc i64 %679 to i32
  %681 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %682 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %681, i32 0, i32 0
  store i32 %680, i32* %682, align 8
  store i32 1, i32* %2, align 4
  br label %931

683:                                              ; preds = %498
  %684 = load i16, i16* %5, align 2
  %685 = zext i16 %684 to i32
  %686 = and i32 %685, 61443
  %687 = icmp eq i32 %686, 61443
  br i1 %687, label %688, label %848

688:                                              ; preds = %683
  %689 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %689, %struct.task_struct** %27, align 8
  %690 = load i16, i16* %5, align 2
  %691 = zext i16 %690 to i32
  %692 = ashr i32 %691, 8
  %693 = and i32 %692, 15
  store i32 %693, i32* %29, align 4
  %694 = load i16, i16* %5, align 2
  %695 = zext i16 %694 to i32
  %696 = ashr i32 %695, 4
  %697 = and i32 %696, 15
  store i32 %697, i32* %30, align 4
  %698 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %699 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %698, i32 0, i32 0
  %700 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %699, i32 0, i32 0
  %701 = load %struct.TYPE_4__*, %struct.TYPE_4__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %702, i32 0, i32 1
  %704 = load i32*, i32** %703, align 8
  %705 = load i32, i32* %29, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, i32* %704, i64 %706
  %708 = load i32, i32* %707, align 4
  store i32 %708, i32* %32, align 4
  %709 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %710 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %709, i32 0, i32 0
  %711 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %710, i32 0, i32 0
  %712 = load %struct.TYPE_4__*, %struct.TYPE_4__** %711, align 8
  %713 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %713, i32 0, i32 1
  %715 = load i32*, i32** %714, align 8
  %716 = load i32, i32* %30, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i32, i32* %715, i64 %717
  %719 = load i32, i32* %718, align 4
  store i32 %719, i32* %33, align 4
  %720 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %721 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %720, i32 0, i32 0
  %722 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %721, i32 0, i32 0
  %723 = load %struct.TYPE_4__*, %struct.TYPE_4__** %722, align 8
  %724 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %723, i32 0, i32 0
  %725 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  store i32 %726, i32* %28, align 4
  %727 = load i32, i32* %28, align 4
  %728 = load i32, i32* @FPSCR_DBL_PRECISION, align 4
  %729 = and i32 %727, %728
  store i32 %729, i32* %31, align 4
  %730 = load i32, i32* %28, align 4
  %731 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %732 = and i32 %730, %731
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %810

734:                                              ; preds = %688
  %735 = load i32, i32* %31, align 4
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %810

737:                                              ; preds = %734
  %738 = load i32, i32* %32, align 4
  %739 = and i32 %738, 2147483647
  %740 = icmp ult i32 %739, 1048576
  br i1 %740, label %745, label %741

741:                                              ; preds = %737
  %742 = load i32, i32* %33, align 4
  %743 = and i32 %742, 2147483647
  %744 = icmp ult i32 %743, 1048576
  br i1 %744, label %745, label %810

745:                                              ; preds = %741, %737
  %746 = load i32, i32* %32, align 4
  %747 = zext i32 %746 to i64
  %748 = shl i64 %747, 32
  %749 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %750 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %749, i32 0, i32 0
  %751 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %750, i32 0, i32 0
  %752 = load %struct.TYPE_4__*, %struct.TYPE_4__** %751, align 8
  %753 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %752, i32 0, i32 0
  %754 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %753, i32 0, i32 1
  %755 = load i32*, i32** %754, align 8
  %756 = load i32, i32* %29, align 4
  %757 = add nsw i32 %756, 1
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i32, i32* %755, i64 %758
  %760 = load i32, i32* %759, align 4
  %761 = zext i32 %760 to i64
  %762 = or i64 %748, %761
  store i64 %762, i64* %34, align 8
  %763 = load i32, i32* %33, align 4
  %764 = zext i32 %763 to i64
  %765 = shl i64 %764, 32
  %766 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %767 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %767, i32 0, i32 0
  %769 = load %struct.TYPE_4__*, %struct.TYPE_4__** %768, align 8
  %770 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %769, i32 0, i32 0
  %771 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %770, i32 0, i32 1
  %772 = load i32*, i32** %771, align 8
  %773 = load i32, i32* %30, align 4
  %774 = add nsw i32 %773, 1
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds i32, i32* %772, i64 %775
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  %779 = or i64 %765, %778
  store i64 %779, i64* %35, align 8
  %780 = load i64, i64* %34, align 8
  %781 = load i64, i64* %35, align 8
  %782 = call i64 @float64_div(i64 %780, i64 %781)
  store i64 %782, i64* %34, align 8
  %783 = load i64, i64* %34, align 8
  %784 = ashr i64 %783, 32
  %785 = trunc i64 %784 to i32
  %786 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %787 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %786, i32 0, i32 0
  %788 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %787, i32 0, i32 0
  %789 = load %struct.TYPE_4__*, %struct.TYPE_4__** %788, align 8
  %790 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %789, i32 0, i32 0
  %791 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %790, i32 0, i32 1
  %792 = load i32*, i32** %791, align 8
  %793 = load i32, i32* %29, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i32, i32* %792, i64 %794
  store i32 %785, i32* %795, align 4
  %796 = load i64, i64* %34, align 8
  %797 = and i64 %796, 4294967295
  %798 = trunc i64 %797 to i32
  %799 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %800 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %799, i32 0, i32 0
  %801 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %800, i32 0, i32 0
  %802 = load %struct.TYPE_4__*, %struct.TYPE_4__** %801, align 8
  %803 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %802, i32 0, i32 0
  %804 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %803, i32 0, i32 1
  %805 = load i32*, i32** %804, align 8
  %806 = load i32, i32* %29, align 4
  %807 = add nsw i32 %806, 1
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i32, i32* %805, i64 %808
  store i32 %798, i32* %809, align 4
  br label %843

810:                                              ; preds = %741, %734, %688
  %811 = load i32, i32* %28, align 4
  %812 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %813 = and i32 %811, %812
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %841

815:                                              ; preds = %810
  %816 = load i32, i32* %31, align 4
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %841, label %818

818:                                              ; preds = %815
  %819 = load i32, i32* %32, align 4
  %820 = and i32 %819, 2147483647
  %821 = icmp ult i32 %820, 8388608
  br i1 %821, label %826, label %822

822:                                              ; preds = %818
  %823 = load i32, i32* %33, align 4
  %824 = and i32 %823, 2147483647
  %825 = icmp ult i32 %824, 8388608
  br i1 %825, label %826, label %841

826:                                              ; preds = %822, %818
  %827 = load i32, i32* %32, align 4
  %828 = load i32, i32* %33, align 4
  %829 = call i32 @float32_div(i32 %827, i32 %828)
  store i32 %829, i32* %32, align 4
  %830 = load i32, i32* %32, align 4
  %831 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %832 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %831, i32 0, i32 0
  %833 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %832, i32 0, i32 0
  %834 = load %struct.TYPE_4__*, %struct.TYPE_4__** %833, align 8
  %835 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %834, i32 0, i32 0
  %836 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %835, i32 0, i32 1
  %837 = load i32*, i32** %836, align 8
  %838 = load i32, i32* %29, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds i32, i32* %837, i64 %839
  store i32 %830, i32* %840, align 4
  br label %842

841:                                              ; preds = %822, %815, %810
  store i32 0, i32* %2, align 4
  br label %931

842:                                              ; preds = %826
  br label %843

843:                                              ; preds = %842, %745
  %844 = load i64, i64* %6, align 8
  %845 = trunc i64 %844 to i32
  %846 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %847 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %846, i32 0, i32 0
  store i32 %845, i32* %847, align 8
  store i32 1, i32* %2, align 4
  br label %931

848:                                              ; preds = %683
  %849 = load i16, i16* %5, align 2
  %850 = zext i16 %849 to i32
  %851 = and i32 %850, 61629
  %852 = icmp eq i32 %851, 61629
  br i1 %852, label %853, label %926

853:                                              ; preds = %848
  %854 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %854, %struct.task_struct** %36, align 8
  %855 = load i16, i16* %5, align 2
  %856 = zext i16 %855 to i32
  %857 = ashr i32 %856, 8
  %858 = and i32 %857, 7
  store i32 %858, i32* %37, align 4
  %859 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %860 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %859, i32 0, i32 0
  %861 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %860, i32 0, i32 0
  %862 = load %struct.TYPE_4__*, %struct.TYPE_4__** %861, align 8
  %863 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %862, i32 0, i32 0
  %864 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %863, i32 0, i32 1
  %865 = load i32*, i32** %864, align 8
  %866 = load i32, i32* %37, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i32, i32* %865, i64 %867
  %869 = load i32, i32* %868, align 4
  store i32 %869, i32* %38, align 4
  %870 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %871 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %870, i32 0, i32 0
  %872 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %871, i32 0, i32 0
  %873 = load %struct.TYPE_4__*, %struct.TYPE_4__** %872, align 8
  %874 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %873, i32 0, i32 0
  %875 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %874, i32 0, i32 0
  %876 = load i32, i32* %875, align 8
  %877 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %878 = and i32 %876, %877
  %879 = icmp ne i32 %878, 0
  br i1 %879, label %880, label %920

880:                                              ; preds = %853
  %881 = load i32, i32* %38, align 4
  %882 = and i32 %881, 2147483647
  %883 = icmp ult i32 %882, 1048576
  br i1 %883, label %884, label %920

884:                                              ; preds = %880
  %885 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %886 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %885, i32 0, i32 0
  %887 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %886, i32 0, i32 0
  %888 = load %struct.TYPE_4__*, %struct.TYPE_4__** %887, align 8
  %889 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %888, i32 0, i32 0
  %890 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %889, i32 0, i32 1
  %891 = load i32*, i32** %890, align 8
  %892 = load i32, i32* %37, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds i32, i32* %891, i64 %893
  %895 = load i32, i32* %894, align 4
  %896 = zext i32 %895 to i64
  %897 = shl i64 %896, 32
  %898 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %899 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %898, i32 0, i32 0
  %900 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %899, i32 0, i32 0
  %901 = load %struct.TYPE_4__*, %struct.TYPE_4__** %900, align 8
  %902 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %901, i32 0, i32 0
  %903 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %902, i32 0, i32 1
  %904 = load i32*, i32** %903, align 8
  %905 = load i32, i32* %37, align 4
  %906 = add nsw i32 %905, 1
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds i32, i32* %904, i64 %907
  %909 = load i32, i32* %908, align 4
  %910 = zext i32 %909 to i64
  %911 = or i64 %897, %910
  store i64 %911, i64* %39, align 8
  %912 = load i64, i64* %39, align 8
  %913 = call i32 @float64_to_float32(i64 %912)
  %914 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %915 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %914, i32 0, i32 0
  %916 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %915, i32 0, i32 0
  %917 = load %struct.TYPE_4__*, %struct.TYPE_4__** %916, align 8
  %918 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %917, i32 0, i32 0
  %919 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %918, i32 0, i32 2
  store i32 %913, i32* %919, align 8
  br label %921

920:                                              ; preds = %880, %853
  store i32 0, i32* %2, align 4
  br label %931

921:                                              ; preds = %884
  %922 = load i64, i64* %6, align 8
  %923 = trunc i64 %922 to i32
  %924 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %925 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %924, i32 0, i32 0
  store i32 %923, i32* %925, align 8
  store i32 1, i32* %2, align 4
  br label %931

926:                                              ; preds = %848
  br label %927

927:                                              ; preds = %926
  br label %928

928:                                              ; preds = %927
  br label %929

929:                                              ; preds = %928
  br label %930

930:                                              ; preds = %929
  store i32 0, i32* %2, align 4
  br label %931

931:                                              ; preds = %930, %921, %920, %843, %841, %678, %676, %493, %491, %328, %327
  %932 = load i32, i32* %2, align 4
  ret i32 %932
}

declare dso_local i64 @instruction_size(i16 zeroext) #1

declare dso_local i32 @denormal_to_double(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i64 @float64_mul(i64, i64) #1

declare dso_local i32 @float32_mul(i32, i32) #1

declare dso_local i64 @float64_add(i64, i64) #1

declare dso_local i64 @float64_sub(i64, i64) #1

declare dso_local i32 @float32_add(i32, i32) #1

declare dso_local i32 @float32_sub(i32, i32) #1

declare dso_local i64 @float64_div(i64, i64) #1

declare dso_local i32 @float32_div(i32, i32) #1

declare dso_local i32 @float64_to_float32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
