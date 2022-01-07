; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_frac_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_frac_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pistachio_clk_pll = type { i32 }
%struct.pistachio_pll_rate_table = type { i32, i32, i32, i32, i32, i32 }

@MIN_OUTPUT_FRAC = common dso_local global i64 0, align 8
@MAX_OUTPUT_FRAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MIN_VCO_FRAC_FRAC = common dso_local global i32 0, align 4
@MAX_VCO_FRAC_FRAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: VCO %llu is out of range %lu..%lu\0A\00", align 1
@MIN_PFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: PFD %llu is too low (min %lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: PFD %llu is too high (max %llu)\0A\00", align 1
@PLL_CTRL1 = common dso_local global i32 0, align 4
@PLL_CTRL1_REFDIV_MASK = common dso_local global i32 0, align 4
@PLL_CTRL1_REFDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL1_FBDIV_MASK = common dso_local global i32 0, align 4
@PLL_CTRL1_FBDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL2 = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV1_SHIFT = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV1_MASK = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV2_SHIFT = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV2_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: changing postdiv while PLL is enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: postdiv2 should not exceed postdiv1\0A\00", align 1
@PLL_FRAC_CTRL2_FRAC_MASK = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_FRAC_SHIFT = common dso_local global i32 0, align 4
@PLL_MODE_FRAC = common dso_local global i32 0, align 4
@PLL_MODE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @pll_gf40lp_frac_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_gf40lp_frac_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pistachio_clk_pll*, align 8
  %9 = alloca %struct.pistachio_pll_rate_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = call %struct.pistachio_clk_pll* @to_pistachio_pll(%struct.clk_hw* %16)
  store %struct.pistachio_clk_pll* %17, %struct.pistachio_clk_pll** %8, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call i32 @pll_gf40lp_frac_is_enabled(%struct.clk_hw* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %21 = call i8* @clk_hw_get_name(%struct.clk_hw* %20)
  store i8* %21, i8** %15, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MIN_OUTPUT_FRAC, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @MAX_OUTPUT_FRAC, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %236

32:                                               ; preds = %25
  %33 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.pistachio_pll_rate_table* @pll_get_params(%struct.pistachio_clk_pll* %33, i64 %34, i64 %35)
  store %struct.pistachio_pll_rate_table* %36, %struct.pistachio_pll_rate_table** %9, align 8
  %37 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %38 = icmp ne %struct.pistachio_pll_rate_table* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %41 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %236

47:                                               ; preds = %39
  %48 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %49 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %52 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 24
  %55 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %56 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %63 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 24
  %66 = call i32 @div64_u64(i32 %61, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @MIN_VCO_FRAC_FRAC, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %47
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @MAX_VCO_FRAC_FRAC, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %47
  %75 = load i8*, i8** %15, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @MIN_VCO_FRAC_FRAC, align 4
  %78 = load i32, i32* @MAX_VCO_FRAC_FRAC, align 4
  %79 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %70
  %81 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %82 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %85 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @div64_u64(i32 %83, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @MIN_PFD, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @MIN_PFD, align 4
  %95 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %80
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sdiv i32 %98, 16
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i8*, i8** %15, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sdiv i32 %104, 16
  %106 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %102, i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  %108 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %109 = load i32, i32* @PLL_CTRL1, align 4
  %110 = call i32 @pll_readl(%struct.pistachio_clk_pll* %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* @PLL_CTRL1_REFDIV_MASK, align 4
  %112 = load i32, i32* @PLL_CTRL1_REFDIV_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* @PLL_CTRL1_FBDIV_MASK, align 4
  %115 = load i32, i32* @PLL_CTRL1_FBDIV_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %113, %116
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %122 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PLL_CTRL1_REFDIV_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %127 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PLL_CTRL1_FBDIV_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = or i32 %125, %130
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @PLL_CTRL1, align 4
  %137 = call i32 @pll_writel(%struct.pistachio_clk_pll* %134, i32 %135, i32 %136)
  %138 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %139 = load i32, i32* @PLL_CTRL2, align 4
  %140 = call i32 @pll_readl(%struct.pistachio_clk_pll* %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV1_SHIFT, align 4
  %143 = ashr i32 %141, %142
  %144 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV1_MASK, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV2_SHIFT, align 4
  %148 = ashr i32 %146, %147
  %149 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV2_MASK, align 4
  %150 = and i32 %148, %149
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %107
  %154 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %155 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %153
  %160 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %161 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159, %153
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %165, %159, %107
  %169 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %170 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %173 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %171, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i8*, i8** %15, align 8
  %178 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %176, %168
  %180 = load i32, i32* @PLL_FRAC_CTRL2_FRAC_MASK, align 4
  %181 = load i32, i32* @PLL_FRAC_CTRL2_FRAC_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV1_MASK, align 4
  %184 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV1_SHIFT, align 4
  %185 = shl i32 %183, %184
  %186 = or i32 %182, %185
  %187 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV2_MASK, align 4
  %188 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV2_SHIFT, align 4
  %189 = shl i32 %187, %188
  %190 = or i32 %186, %189
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %11, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %11, align 4
  %194 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %195 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PLL_FRAC_CTRL2_FRAC_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %200 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV1_SHIFT, align 4
  %203 = shl i32 %201, %202
  %204 = or i32 %198, %203
  %205 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %206 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV2_SHIFT, align 4
  %209 = shl i32 %207, %208
  %210 = or i32 %204, %209
  %211 = load i32, i32* %11, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %11, align 4
  %213 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @PLL_CTRL2, align 4
  %216 = call i32 @pll_writel(%struct.pistachio_clk_pll* %213, i32 %214, i32 %215)
  %217 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %218 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %179
  %222 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %223 = load i32, i32* @PLL_MODE_FRAC, align 4
  %224 = call i32 @pll_frac_set_mode(%struct.clk_hw* %222, i32 %223)
  br label %229

225:                                              ; preds = %179
  %226 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %227 = load i32, i32* @PLL_MODE_INT, align 4
  %228 = call i32 @pll_frac_set_mode(%struct.clk_hw* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %221
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %234 = call i32 @pll_lock(%struct.pistachio_clk_pll* %233)
  br label %235

235:                                              ; preds = %232, %229
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %235, %44, %29
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local %struct.pistachio_clk_pll* @to_pistachio_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_gf40lp_frac_is_enabled(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local %struct.pistachio_pll_rate_table* @pll_get_params(%struct.pistachio_clk_pll*, i64, i64) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

declare dso_local i32 @pll_readl(%struct.pistachio_clk_pll*, i32) #1

declare dso_local i32 @pll_writel(%struct.pistachio_clk_pll*, i32, i32) #1

declare dso_local i32 @pll_frac_set_mode(%struct.clk_hw*, i32) #1

declare dso_local i32 @pll_lock(%struct.pistachio_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
