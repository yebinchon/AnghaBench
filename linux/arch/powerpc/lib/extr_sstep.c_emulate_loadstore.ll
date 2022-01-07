; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_sstep.c_emulate_loadstore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_sstep.c_emulate_loadstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64*, i64, i32, i32 }
%struct.instruction_op = type { i32, i32, i64, i64, i32, i32 }

@MSR_LE = common dso_local global i32 0, align 4
@MSR_KERNEL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lwarx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stwcx.\00", align 1
@SIGNEXT = common dso_local global i32 0, align 4
@BYTEREV = common dso_local global i32 0, align 4
@UPDATE = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@STACK_INT_FRAME_SIZE = common dso_local global i32 0, align 4
@MSR_FP = common dso_local global i32 0, align 4
@MSR_VEC = common dso_local global i64 0, align 8
@MSR_VSX = common dso_local global i64 0, align 8
@VSX_CHECK_VEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emulate_loadstore(%struct.pt_regs* %0, %struct.instruction_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.instruction_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.instruction_op* %1, %struct.instruction_op** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %19 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @GETSIZE(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %23 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @GETTYPE(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MSR_LE, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @MSR_KERNEL, align 4
  %32 = load i32, i32* @MSR_LE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %30, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %40 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @truncate_if_32bit(i32 %38, i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %382 [
    i32 139, label %44
    i32 133, label %93
    i32 138, label %149
    i32 136, label %206
    i32 132, label %264
    i32 130, label %324
  ]

44:                                               ; preds = %2
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = and i64 %45, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %411

54:                                               ; preds = %44
  %55 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @address_ok(%struct.pt_regs* %55, i64 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %411

63:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  store i64 0, i64* %13, align 8
  %64 = load i32, i32* %7, align 4
  switch i32 %64, label %70 [
    i32 4, label %65
  ]

65:                                               ; preds = %63
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @__get_user_asmx(i64 %66, i64 %67, i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %411

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %385

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %89 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 %84, i64* %91, align 8
  br label %92

92:                                               ; preds = %83, %80
  br label %385

93:                                               ; preds = %2
  %94 = load i64, i64* %14, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = and i64 %94, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @EACCES, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %411

103:                                              ; preds = %93
  %104 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @address_ok(%struct.pt_regs* %104, i64 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @EFAULT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %411

112:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  switch i32 %113, label %122 [
    i32 4, label %114
  ]

114:                                              ; preds = %112
  %115 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %116 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @__put_user_asmx(i64 %117, i64 %118, i32 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %125

122:                                              ; preds = %112
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %411

125:                                              ; preds = %114
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %125
  %129 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %130 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 268435455
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, -536870912
  %135 = or i32 %132, %134
  %136 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %137 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 3
  %140 = and i32 %139, 268435456
  %141 = or i32 %135, %140
  %142 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %143 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  br label %148

144:                                              ; preds = %125
  %145 = load i64, i64* %14, align 8
  %146 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %147 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %128
  br label %385

149:                                              ; preds = %2
  %150 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %151 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %154 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64, i64* %14, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %160 = call i32 @read_mem(i64* %156, i64 %157, i32 %158, %struct.pt_regs* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %205, label %163

163:                                              ; preds = %149
  %164 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %165 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SIGNEXT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %163
  %171 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %172 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %175 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @do_signext(i64* %177, i32 %178)
  br label %180

180:                                              ; preds = %170, %163
  %181 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %182 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @BYTEREV, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %191

189:                                              ; preds = %180
  %190 = load i32, i32* @BYTEREV, align 4
  br label %191

191:                                              ; preds = %189, %188
  %192 = phi i32 [ 0, %188 ], [ %190, %189 ]
  %193 = icmp eq i32 %185, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %196 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %199 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i64, i64* %197, i64 %200
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @do_byterev(i64* %201, i32 %202)
  br label %204

204:                                              ; preds = %194, %191
  br label %205

205:                                              ; preds = %204, %149
  br label %385

206:                                              ; preds = %2
  %207 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %208 = load i64, i64* %14, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @address_ok(%struct.pt_regs* %207, i64 %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = load i32, i32* @EFAULT, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %411

215:                                              ; preds = %206
  %216 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %217 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %260, %215
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %263

224:                                              ; preds = %220
  store i32 0, i32* %16, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %9, align 4
  %227 = sub nsw i32 %225, %226
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp sgt i32 %228, 4
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store i32 4, i32* %11, align 4
  br label %231

231:                                              ; preds = %230, %224
  %232 = load i64, i64* %14, align 8
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %235 = call i32 @copy_mem_in(i32* %16, i64 %232, i32 %233, %struct.pt_regs* %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %263

239:                                              ; preds = %231
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @unlikely(i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i32, i32* %16, align 4
  %245 = call i32 @byterev_4(i32 %244)
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %243, %239
  %247 = load i32, i32* %16, align 4
  %248 = zext i32 %247 to i64
  %249 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %250 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %249, i32 0, i32 1
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  store i64 %248, i64* %254, align 8
  %255 = load i64, i64* %14, align 8
  %256 = add i64 %255, 4
  store i64 %256, i64* %14, align 8
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 1
  %259 = and i32 %258, 31
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %246
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 4
  store i32 %262, i32* %9, align 4
  br label %220

263:                                              ; preds = %238, %220
  br label %385

264:                                              ; preds = %2
  %265 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %266 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @UPDATE, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %307

271:                                              ; preds = %264
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = icmp eq i64 %273, 8
  br i1 %274, label %275, label %307

275:                                              ; preds = %271
  %276 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %277 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 1
  br i1 %279, label %280, label %307

280:                                              ; preds = %275
  %281 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %282 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %307

285:                                              ; preds = %280
  %286 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %287 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @MSR_PR, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %307, label %292

292:                                              ; preds = %285
  %293 = load i64, i64* %14, align 8
  %294 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %295 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %294, i32 0, i32 1
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 1
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* @STACK_INT_FRAME_SIZE, align 4
  %300 = sext i32 %299 to i64
  %301 = sub i64 %298, %300
  %302 = icmp uge i64 %293, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %292
  %304 = load i64, i64* %14, align 8
  %305 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %306 = call i32 @handle_stack_update(i64 %304, %struct.pt_regs* %305)
  store i32 %306, i32* %6, align 4
  br label %385

307:                                              ; preds = %292, %285, %280, %275, %271, %264
  %308 = load i32, i32* %15, align 4
  %309 = call i32 @unlikely(i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %313 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %312, i32 0, i32 3
  %314 = load i32, i32* %7, align 4
  %315 = call i32 @do_byterev(i64* %313, i32 %314)
  br label %316

316:                                              ; preds = %311, %307
  %317 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %318 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* %14, align 8
  %321 = load i32, i32* %7, align 4
  %322 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %323 = call i32 @write_mem(i64 %319, i64 %320, i32 %321, %struct.pt_regs* %322)
  store i32 %323, i32* %6, align 4
  br label %385

324:                                              ; preds = %2
  %325 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %326 = load i64, i64* %14, align 8
  %327 = load i32, i32* %7, align 4
  %328 = call i32 @address_ok(%struct.pt_regs* %325, i64 %326, i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %324
  %331 = load i32, i32* @EFAULT, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %3, align 4
  br label %411

333:                                              ; preds = %324
  %334 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %335 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %338

338:                                              ; preds = %378, %333
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* %7, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %381

342:                                              ; preds = %338
  %343 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %344 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %343, i32 0, i32 1
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %345, i64 %347
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %17, align 4
  %351 = load i32, i32* %7, align 4
  %352 = load i32, i32* %9, align 4
  %353 = sub nsw i32 %351, %352
  store i32 %353, i32* %11, align 4
  %354 = load i32, i32* %11, align 4
  %355 = icmp sgt i32 %354, 4
  br i1 %355, label %356, label %357

356:                                              ; preds = %342
  store i32 4, i32* %11, align 4
  br label %357

357:                                              ; preds = %356, %342
  %358 = load i32, i32* %15, align 4
  %359 = call i32 @unlikely(i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %357
  %362 = load i32, i32* %17, align 4
  %363 = call i32 @byterev_4(i32 %362)
  store i32 %363, i32* %17, align 4
  br label %364

364:                                              ; preds = %361, %357
  %365 = load i64, i64* %14, align 8
  %366 = load i32, i32* %11, align 4
  %367 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %368 = call i32 @copy_mem_out(i32* %17, i64 %365, i32 %366, %struct.pt_regs* %367)
  store i32 %368, i32* %6, align 4
  %369 = load i32, i32* %6, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %364
  br label %381

372:                                              ; preds = %364
  %373 = load i64, i64* %14, align 8
  %374 = add i64 %373, 4
  store i64 %374, i64* %14, align 8
  %375 = load i32, i32* %10, align 4
  %376 = add nsw i32 %375, 1
  %377 = and i32 %376, 31
  store i32 %377, i32* %10, align 4
  br label %378

378:                                              ; preds = %372
  %379 = load i32, i32* %9, align 4
  %380 = add nsw i32 %379, 4
  store i32 %380, i32* %9, align 4
  br label %338

381:                                              ; preds = %371, %338
  br label %385

382:                                              ; preds = %2
  %383 = load i32, i32* @EINVAL, align 4
  %384 = sub nsw i32 0, %383
  store i32 %384, i32* %3, align 4
  br label %411

385:                                              ; preds = %381, %316, %303, %263, %205, %148, %92, %76
  %386 = load i32, i32* %6, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = load i32, i32* %6, align 4
  store i32 %389, i32* %3, align 4
  br label %411

390:                                              ; preds = %385
  %391 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %392 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @UPDATE, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %390
  %398 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %399 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = zext i32 %400 to i64
  %402 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %403 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %402, i32 0, i32 1
  %404 = load i64*, i64** %403, align 8
  %405 = load %struct.instruction_op*, %struct.instruction_op** %5, align 8
  %406 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %405, i32 0, i32 5
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %404, i64 %408
  store i64 %401, i64* %409, align 8
  br label %410

410:                                              ; preds = %397, %390
  store i32 0, i32* %3, align 4
  br label %411

411:                                              ; preds = %410, %388, %382, %330, %212, %122, %109, %100, %70, %60, %51
  %412 = load i32, i32* %3, align 4
  ret i32 %412
}

declare dso_local i32 @GETSIZE(i32) #1

declare dso_local i32 @GETTYPE(i32) #1

declare dso_local i64 @truncate_if_32bit(i32, i32) #1

declare dso_local i32 @address_ok(%struct.pt_regs*, i64, i32) #1

declare dso_local i32 @__get_user_asmx(i64, i64, i32, i8*) #1

declare dso_local i32 @__put_user_asmx(i64, i64, i32, i8*, i32) #1

declare dso_local i32 @read_mem(i64*, i64, i32, %struct.pt_regs*) #1

declare dso_local i32 @do_signext(i64*, i32) #1

declare dso_local i32 @do_byterev(i64*, i32) #1

declare dso_local i32 @copy_mem_in(i32*, i64, i32, %struct.pt_regs*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @byterev_4(i32) #1

declare dso_local i32 @handle_stack_update(i64, %struct.pt_regs*) #1

declare dso_local i32 @write_mem(i64, i64, i32, %struct.pt_regs*) #1

declare dso_local i32 @copy_mem_out(i32*, i64, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
