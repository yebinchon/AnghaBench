; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power6-pmu.c_p6_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power6-pmu.c_p6_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@MMCRA_SDAR_DCACHE_MISS = common dso_local global i64 0, align 8
@MMCRA_SDAR_ERAT_MISS = common dso_local global i64 0, align 8
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@PM_BUSEVENT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_SUBUNIT_SH = common dso_local global i32 0, align 4
@PM_SUBUNIT_MSK = common dso_local global i32 0, align 4
@MMCR1_NESTSEL_SH = common dso_local global i64 0, align 8
@MMCR1_PMC1_ADDR_SEL = common dso_local global i32 0, align 4
@PM_LLA = common dso_local global i32 0, align 4
@MMCR1_PMC1_LLA = common dso_local global i32 0, align 4
@PM_LLAV = common dso_local global i32 0, align 4
@MMCR1_PMC1_LLA_VALUE = common dso_local global i32 0, align 4
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*, %struct.perf_event**)* @p6_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p6_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3, %struct.perf_event** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.perf_event**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.perf_event** %4, %struct.perf_event*** %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i64, i64* @MMCRA_SDAR_DCACHE_MISS, align 8
  %24 = load i64, i64* @MMCRA_SDAR_ERAT_MISS, align 8
  %25 = or i64 %23, %24
  store i64 %25, i64* %13, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %289

29:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PM_PMC_SH, align 4
  %41 = lshr i32 %39, %40
  %42 = load i32, i32* @PM_PMC_MSK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %34
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* %15, align 4
  %49 = sub i32 %48, 1
  %50 = shl i32 1, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 -1, i32* %6, align 4
  br label %289

54:                                               ; preds = %46
  %55 = load i32, i32* %15, align 4
  %56 = sub i32 %55, 1
  %57 = shl i32 1, %56
  %58 = load i32, i32* %22, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %22, align 4
  br label %60

60:                                               ; preds = %54, %34
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %30

64:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %259, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %262

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @PM_PMC_SH, align 4
  %77 = lshr i32 %75, %76
  %78 = load i32, i32* @PM_PMC_MSK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %15, align 4
  br label %109

85:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %97, %85
  %87 = load i32, i32* %15, align 4
  %88 = icmp ult i32 %87, 4
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %15, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %100

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %86

100:                                              ; preds = %95, %86
  %101 = load i32, i32* %15, align 4
  %102 = icmp uge i32 %101, 4
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 -1, i32* %6, align 4
  br label %289

104:                                              ; preds = %100
  %105 = load i32, i32* %15, align 4
  %106 = shl i32 1, %105
  %107 = load i32, i32* %22, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %22, align 4
  br label %109

109:                                              ; preds = %104, %82
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %211

122:                                              ; preds = %109
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @PM_BYTE_SH, align 4
  %125 = lshr i32 %123, %124
  %126 = load i32, i32* @PM_BYTE_MSK, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* @PM_UNIT_SH, align 4
  %130 = lshr i32 %128, %129
  %131 = load i32, i32* @PM_UNIT_MSK, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %17, align 4
  %135 = shl i32 1, %134
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %122
  %139 = load i64, i64* %12, align 8
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @MMCR1_TTMSEL(i64 %139, i32 %140)
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 -1, i32* %6, align 4
  br label %289

145:                                              ; preds = %138, %122
  %146 = load i32, i32* %18, align 4
  %147 = zext i32 %146 to i64
  %148 = load i32, i32* %17, align 4
  %149 = call i64 @MMCR1_TTMSEL_SH(i32 %148)
  %150 = shl i64 %147, %149
  %151 = load i64, i64* %12, align 8
  %152 = or i64 %151, %150
  store i64 %152, i64* %12, align 8
  %153 = load i32, i32* %17, align 4
  %154 = shl i32 1, %153
  %155 = load i32, i32* %21, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %18, align 4
  %158 = icmp eq i32 %157, 5
  br i1 %158, label %159, label %183

159:                                              ; preds = %145
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @PM_SUBUNIT_SH, align 4
  %162 = lshr i32 %160, %161
  %163 = load i32, i32* @PM_SUBUNIT_MSK, align 4
  %164 = and i32 %162, %163
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %21, align 4
  %166 = and i32 %165, 16
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %159
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @MMCR1_NESTSEL(i64 %169)
  %171 = load i32, i32* %19, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 -1, i32* %6, align 4
  br label %289

174:                                              ; preds = %168, %159
  %175 = load i32, i32* %21, align 4
  %176 = or i32 %175, 16
  store i32 %176, i32* %21, align 4
  %177 = load i32, i32* %19, align 4
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* @MMCR1_NESTSEL_SH, align 8
  %180 = shl i64 %178, %179
  %181 = load i64, i64* %12, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %12, align 8
  br label %183

183:                                              ; preds = %174, %145
  %184 = load i32, i32* %20, align 4
  %185 = icmp ule i32 48, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load i32, i32* %20, align 4
  %188 = icmp ule i32 %187, 61
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load i32, i32* %17, align 4
  %191 = icmp uge i32 %190, 2
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i32, i32* @MMCR1_PMC1_ADDR_SEL, align 4
  %194 = load i32, i32* %15, align 4
  %195 = lshr i32 %193, %194
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %12, align 8
  %198 = or i64 %197, %196
  store i64 %198, i64* %12, align 8
  br label %199

199:                                              ; preds = %192, %189
  br label %200

200:                                              ; preds = %199, %186, %183
  %201 = load i32, i32* %15, align 4
  %202 = icmp uge i32 %201, 2
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load i32, i32* %20, align 4
  %205 = and i32 %204, 144
  %206 = icmp eq i32 %205, 128
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i32, i32* %20, align 4
  %209 = xor i32 %208, 32
  store i32 %209, i32* %20, align 4
  br label %210

210:                                              ; preds = %207, %203, %200
  br label %211

211:                                              ; preds = %210, %109
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* @PM_LLA, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %235

216:                                              ; preds = %211
  %217 = load i32, i32* @MMCR1_PMC1_LLA, align 4
  %218 = load i32, i32* %15, align 4
  %219 = lshr i32 %217, %218
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* %12, align 8
  %222 = or i64 %221, %220
  store i64 %222, i64* %12, align 8
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* @PM_LLAV, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %216
  %228 = load i32, i32* @MMCR1_PMC1_LLA_VALUE, align 4
  %229 = load i32, i32* %15, align 4
  %230 = lshr i32 %228, %229
  %231 = zext i32 %230 to i64
  %232 = load i64, i64* %12, align 8
  %233 = or i64 %232, %231
  store i64 %233, i64* %12, align 8
  br label %234

234:                                              ; preds = %227, %216
  br label %235

235:                                              ; preds = %234, %211
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @power6_marked_instr_event(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %235
  %244 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %245 = load i64, i64* %13, align 8
  %246 = or i64 %245, %244
  store i64 %246, i64* %13, align 8
  br label %247

247:                                              ; preds = %243, %235
  %248 = load i32, i32* %15, align 4
  %249 = icmp ult i32 %248, 4
  br i1 %249, label %250, label %258

250:                                              ; preds = %247
  %251 = load i32, i32* %20, align 4
  %252 = zext i32 %251 to i64
  %253 = load i32, i32* %15, align 4
  %254 = call i64 @MMCR1_PMCSEL_SH(i32 %253)
  %255 = shl i64 %252, %254
  %256 = load i64, i64* %12, align 8
  %257 = or i64 %256, %255
  store i64 %257, i64* %12, align 8
  br label %258

258:                                              ; preds = %250, %247
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %65

262:                                              ; preds = %65
  %263 = load i64*, i64** %10, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 0
  store i64 0, i64* %264, align 8
  %265 = load i32, i32* %22, align 4
  %266 = and i32 %265, 1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %262
  %269 = load i64, i64* @MMCR0_PMC1CE, align 8
  %270 = load i64*, i64** %10, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 0
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %268, %262
  %273 = load i32, i32* %22, align 4
  %274 = and i32 %273, 14
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load i64, i64* @MMCR0_PMCjCE, align 8
  %278 = load i64*, i64** %10, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 0
  %280 = load i64, i64* %279, align 8
  %281 = or i64 %280, %277
  store i64 %281, i64* %279, align 8
  br label %282

282:                                              ; preds = %276, %272
  %283 = load i64, i64* %12, align 8
  %284 = load i64*, i64** %10, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 1
  store i64 %283, i64* %285, align 8
  %286 = load i64, i64* %13, align 8
  %287 = load i64*, i64** %10, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 2
  store i64 %286, i64* %288, align 8
  store i32 0, i32* %6, align 4
  br label %289

289:                                              ; preds = %282, %173, %144, %103, %53, %28
  %290 = load i32, i32* %6, align 4
  ret i32 %290
}

declare dso_local i32 @MMCR1_TTMSEL(i64, i32) #1

declare dso_local i64 @MMCR1_TTMSEL_SH(i32) #1

declare dso_local i32 @MMCR1_NESTSEL(i64) #1

declare dso_local i64 @power6_marked_instr_event(i32) #1

declare dso_local i64 @MMCR1_PMCSEL_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
