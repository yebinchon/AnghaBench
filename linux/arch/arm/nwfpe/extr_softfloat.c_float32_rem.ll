; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_rem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float32_default_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_rem(%struct.roundingData* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roundingData*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @extractFloat32Frac(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @extractFloat32Exp(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @extractFloat32Sign(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @extractFloat32Frac(i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @extractFloat32Exp(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @extractFloat32Sign(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %57

37:                                               ; preds = %3
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @propagateFloat32NaN(i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %275

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @float_flag_invalid, align 4
  %52 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %53 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @float32_default_nan, align 4
  store i32 %56, i32* %4, align 4
  br label %275

57:                                               ; preds = %3
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @propagateFloat32NaN(i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %275

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %4, align 4
  br label %275

69:                                               ; preds = %57
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* @float_flag_invalid, align 4
  %77 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %78 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @float32_default_nan, align 4
  store i32 %81, i32* %4, align 4
  br label %275

82:                                               ; preds = %72
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @normalizeFloat32Subnormal(i32 %83, i32* %12, i32* %15)
  br label %85

85:                                               ; preds = %82, %69
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %4, align 4
  br label %275

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @normalizeFloat32Subnormal(i32 %94, i32* %11, i32* %14)
  br label %96

96:                                               ; preds = %93, %85
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, 8388608
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %102, 8388608
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 32
  br i1 %105, label %106, label %163

106:                                              ; preds = %96
  %107 = load i32, i32* %14, align 4
  %108 = shl i32 %107, 8
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = shl i32 %109, 8
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, -1
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %4, align 4
  br label %275

118:                                              ; preds = %113
  %119 = load i32, i32* %14, align 4
  %120 = ashr i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %118, %106
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp sle i32 %122, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %128, %121
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 0, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %132
  %136 = load i32, i32* %14, align 4
  %137 = shl i32 %136, 32
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @do_div(i32 %138, i32 %139)
  %141 = load i32, i32* %22, align 4
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 32, %142
  %144 = load i32, i32* %16, align 4
  %145 = ashr i32 %144, %143
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %15, align 4
  %147 = ashr i32 %146, 2
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %14, align 4
  %149 = ashr i32 %148, 1
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %150, 1
  %152 = shl i32 %149, %151
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sub nsw i32 %152, %155
  store i32 %156, i32* %14, align 4
  br label %162

157:                                              ; preds = %132
  %158 = load i32, i32* %14, align 4
  %159 = ashr i32 %158, 2
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = ashr i32 %160, 2
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %157, %135
  br label %229

163:                                              ; preds = %96
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load i32, i32* %14, align 4
  %173 = shl i32 %172, 40
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %15, align 4
  %175 = shl i32 %174, 40
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %13, align 4
  %177 = sub nsw i32 %176, 64
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %191, %171
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 0, %179
  br i1 %180, label %181, label %200

181:                                              ; preds = %178
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @estimateDiv128To64(i32 %182, i32 0, i32 %183)
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %19, align 4
  %186 = icmp slt i32 2, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* %19, align 4
  %189 = sub nsw i32 %188, 2
  br label %191

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190, %187
  %192 = phi i32 [ %189, %187 ], [ 0, %190 ]
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %19, align 4
  %195 = mul nsw i32 %193, %194
  %196 = shl i32 %195, 38
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %13, align 4
  %199 = sub nsw i32 %198, 62
  store i32 %199, i32* %13, align 4
  br label %178

200:                                              ; preds = %178
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 64
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %18, align 4
  %205 = call i32 @estimateDiv128To64(i32 %203, i32 0, i32 %204)
  store i32 %205, i32* %19, align 4
  %206 = load i32, i32* %19, align 4
  %207 = icmp slt i32 2, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load i32, i32* %19, align 4
  %210 = sub nsw i32 %209, 2
  br label %212

211:                                              ; preds = %200
  br label %212

212:                                              ; preds = %211, %208
  %213 = phi i32 [ %210, %208 ], [ 0, %211 ]
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %13, align 4
  %216 = sub nsw i32 64, %215
  %217 = ashr i32 %214, %216
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %15, align 4
  %219 = shl i32 %218, 6
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %17, align 4
  %221 = ashr i32 %220, 33
  %222 = load i32, i32* %13, align 4
  %223 = sub nsw i32 %222, 1
  %224 = shl i32 %221, %223
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %16, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sub nsw i32 %224, %227
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %212, %162
  br label %230

230:                                              ; preds = %237, %229
  %231 = load i32, i32* %14, align 4
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* %14, align 4
  %236 = sub nsw i32 %235, %234
  store i32 %236, i32* %14, align 4
  br label %237

237:                                              ; preds = %230
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = icmp sle i64 0, %239
  br i1 %240, label %230, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %20, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %21, align 8
  %246 = load i64, i64* %21, align 8
  %247 = icmp slt i64 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %241
  %249 = load i64, i64* %21, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load i32, i32* %16, align 4
  %253 = and i32 %252, 1
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %251, %241
  %256 = load i32, i32* %20, align 4
  store i32 %256, i32* %14, align 4
  br label %257

257:                                              ; preds = %255, %251, %248
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = icmp slt i64 %259, 0
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load i32, i32* %14, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %264, %257
  %268 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* %10, align 4
  %271 = xor i32 %269, %270
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %14, align 4
  %274 = call i32 @normalizeRoundAndPackFloat32(%struct.roundingData* %268, i32 %271, i32 %272, i32 %273)
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %267, %116, %91, %75, %67, %63, %50, %46
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @extractFloat32Sign(i32) #1

declare dso_local i32 @propagateFloat32NaN(i32, i32) #1

declare dso_local i32 @normalizeFloat32Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @estimateDiv128To64(i32, i32, i32) #1

declare dso_local i32 @normalizeRoundAndPackFloat32(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
