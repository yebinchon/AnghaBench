; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@TI_CLK_DPLL_HAS_FREQSEL = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_3__* null, align 8
@TI_CLK_ERRATA_I810 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*, i32)* @omap3_noncore_dpll_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_noncore_dpll_program(%struct.clk_hw_omap* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %12 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %11, i32 0, i32 0
  %13 = load %struct.dpll_data*, %struct.dpll_data** %12, align 8
  store %struct.dpll_data* %13, %struct.dpll_data** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %15 = call i32 @_omap3_noncore_dpll_bypass(%struct.clk_hw_omap* %14)
  %16 = call %struct.TYPE_4__* (...) @ti_clk_get_features()
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TI_CLK_DPLL_HAS_FREQSEL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %27 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %26, i32 0, i32 12
  %28 = call i32 %25(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %30 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %37 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__ffs(i32 %38)
  %40 = shl i32 %35, %39
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32*)*, i32 (i32, i32*)** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %48 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %47, i32 0, i32 12
  %49 = call i32 %45(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %22, %2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (i32*)*, i32 (i32*)** %52, align 8
  %54 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %55 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %54, i32 0, i32 15
  %56 = call i32 %53(i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %58 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %50
  %62 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %63 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %66 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %71 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %82

75:                                               ; preds = %61
  %76 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %77 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %75, %69
  br label %83

83:                                               ; preds = %82, %50
  %84 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %85 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %88 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %86, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %95 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %98 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @__ffs(i32 %99)
  %101 = shl i32 %96, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %105 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %109 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @__ffs(i32 %110)
  %112 = shl i32 %107, %111
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %116 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %83
  %120 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %121 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %122 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %125 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @_lookup_dco(%struct.clk_hw_omap* %120, i32* %6, i32 %123, i32 %126)
  %128 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %129 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %136 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @__ffs(i32 %137)
  %139 = shl i32 %134, %138
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %119, %83
  %143 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %144 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %142
  %148 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %149 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %150 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %153 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @_lookup_sddiv(%struct.clk_hw_omap* %148, i32* %7, i32 %151, i32 %154)
  %156 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %157 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %9, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %164 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @__ffs(i32 %165)
  %167 = shl i32 %162, %166
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %147, %142
  %171 = call %struct.TYPE_4__* (...) @ti_clk_get_features()
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TI_CLK_ERRATA_I810, align 4
  %175 = and i32 %173, %174
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %170
  %179 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %180 = call i32 @omap3_dpll_autoidle_read(%struct.clk_hw_omap* %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %185 = call i32 @omap3_dpll_deny_idle(%struct.clk_hw_omap* %184)
  %186 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %187 = call i32 @omap3_dpll_autoidle_read(%struct.clk_hw_omap* %186)
  br label %188

188:                                              ; preds = %183, %178
  br label %189

189:                                              ; preds = %188, %170
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = load i32 (i32, i32*)*, i32 (i32, i32*)** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %195 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %194, i32 0, i32 15
  %196 = call i32 %192(i32 %193, i32* %195)
  %197 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %198 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %197, i32 0, i32 10
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %189
  %202 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %203 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %268

206:                                              ; preds = %201, %189
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32 (i32*)*, i32 (i32*)** %208, align 8
  %210 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %211 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %210, i32 0, i32 12
  %212 = call i32 %209(i32* %211)
  store i32 %212, i32* %9, align 4
  %213 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %214 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %206
  %218 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %219 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %218, i32 0, i32 14
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %224 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %9, align 4
  br label %235

228:                                              ; preds = %217
  %229 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %230 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 8
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %9, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %228, %222
  br label %236

236:                                              ; preds = %235, %206
  %237 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %238 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %236
  %242 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %243 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %242, i32 0, i32 13
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %248 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %247, i32 0, i32 11
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %9, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %9, align 4
  br label %259

252:                                              ; preds = %241
  %253 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %254 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %253, i32 0, i32 11
  %255 = load i32, i32* %254, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* %9, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %252, %246
  br label %260

260:                                              ; preds = %259, %236
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32 (i32, i32*)*, i32 (i32, i32*)** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %266 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %265, i32 0, i32 12
  %267 = call i32 %263(i32 %264, i32* %266)
  br label %268

268:                                              ; preds = %260, %201
  %269 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %270 = call i32 @_omap3_noncore_dpll_lock(%struct.clk_hw_omap* %269)
  %271 = load i32, i32* %10, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %268
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %278 = call i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap* %277)
  br label %279

279:                                              ; preds = %276, %273, %268
  ret i32 0
}

declare dso_local i32 @_omap3_noncore_dpll_bypass(%struct.clk_hw_omap*) #1

declare dso_local %struct.TYPE_4__* @ti_clk_get_features(...) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @_lookup_dco(%struct.clk_hw_omap*, i32*, i32, i32) #1

declare dso_local i32 @_lookup_sddiv(%struct.clk_hw_omap*, i32*, i32, i32) #1

declare dso_local i32 @omap3_dpll_autoidle_read(%struct.clk_hw_omap*) #1

declare dso_local i32 @omap3_dpll_deny_idle(%struct.clk_hw_omap*) #1

declare dso_local i32 @_omap3_noncore_dpll_lock(%struct.clk_hw_omap*) #1

declare dso_local i32 @omap3_dpll_allow_idle(%struct.clk_hw_omap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
