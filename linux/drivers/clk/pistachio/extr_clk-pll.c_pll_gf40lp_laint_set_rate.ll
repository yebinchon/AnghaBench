; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_laint_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_laint_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pistachio_clk_pll = type { i32 }
%struct.pistachio_pll_rate_table = type { i32, i32, i32, i32, i32 }

@MIN_OUTPUT_LA = common dso_local global i64 0, align 8
@MAX_OUTPUT_LA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MIN_VCO_LA = common dso_local global i32 0, align 4
@MAX_VCO_LA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: VCO %u is out of range %lu..%lu\0A\00", align 1
@MIN_PFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: PFD %u is too low (min %lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: PFD %u is too high (max %u)\0A\00", align 1
@PLL_CTRL1 = common dso_local global i32 0, align 4
@PLL_INT_CTRL1_POSTDIV1_SHIFT = common dso_local global i32 0, align 4
@PLL_INT_CTRL1_POSTDIV1_MASK = common dso_local global i32 0, align 4
@PLL_INT_CTRL1_POSTDIV2_SHIFT = common dso_local global i32 0, align 4
@PLL_INT_CTRL1_POSTDIV2_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: changing postdiv while PLL is enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: postdiv2 should not exceed postdiv1\0A\00", align 1
@PLL_CTRL1_REFDIV_MASK = common dso_local global i32 0, align 4
@PLL_CTRL1_REFDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL1_FBDIV_MASK = common dso_local global i32 0, align 4
@PLL_CTRL1_FBDIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @pll_gf40lp_laint_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_gf40lp_laint_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
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
  %19 = call i32 @pll_gf40lp_laint_is_enabled(%struct.clk_hw* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %21 = call i8* @clk_hw_get_name(%struct.clk_hw* %20)
  store i8* %21, i8** %15, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MIN_OUTPUT_LA, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @MAX_OUTPUT_LA, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %195

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
  br label %195

47:                                               ; preds = %39
  %48 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %49 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %52 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %56 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @div_u64(i32 %54, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @MIN_VCO_LA, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @MAX_VCO_LA, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %47
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @MIN_VCO_LA, align 4
  %70 = load i32, i32* @MAX_VCO_LA, align 4
  %71 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %74 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %77 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @div_u64(i32 %75, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MIN_PFD, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load i8*, i8** %15, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @MIN_PFD, align 4
  %87 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %72
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sdiv i32 %90, 16
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sdiv i32 %96, 16
  %98 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %94, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %101 = load i32, i32* @PLL_CTRL1, align 4
  %102 = call i32 @pll_readl(%struct.pistachio_clk_pll* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @PLL_INT_CTRL1_POSTDIV1_SHIFT, align 4
  %105 = ashr i32 %103, %104
  %106 = load i32, i32* @PLL_INT_CTRL1_POSTDIV1_MASK, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @PLL_INT_CTRL1_POSTDIV2_SHIFT, align 4
  %110 = ashr i32 %108, %109
  %111 = load i32, i32* @PLL_INT_CTRL1_POSTDIV2_MASK, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %99
  %116 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %117 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %123 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121, %115
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %127, %121, %99
  %131 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %132 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %135 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i8*, i8** %15, align 8
  %140 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %130
  %142 = load i32, i32* @PLL_CTRL1_REFDIV_MASK, align 4
  %143 = load i32, i32* @PLL_CTRL1_REFDIV_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* @PLL_CTRL1_FBDIV_MASK, align 4
  %146 = load i32, i32* @PLL_CTRL1_FBDIV_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %144, %147
  %149 = load i32, i32* @PLL_INT_CTRL1_POSTDIV1_MASK, align 4
  %150 = load i32, i32* @PLL_INT_CTRL1_POSTDIV1_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = or i32 %148, %151
  %153 = load i32, i32* @PLL_INT_CTRL1_POSTDIV2_MASK, align 4
  %154 = load i32, i32* @PLL_INT_CTRL1_POSTDIV2_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = or i32 %152, %155
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %11, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %11, align 4
  %160 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %161 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @PLL_CTRL1_REFDIV_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %166 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PLL_CTRL1_FBDIV_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = or i32 %164, %169
  %171 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %172 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PLL_INT_CTRL1_POSTDIV1_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = or i32 %170, %175
  %177 = load %struct.pistachio_pll_rate_table*, %struct.pistachio_pll_rate_table** %9, align 8
  %178 = getelementptr inbounds %struct.pistachio_pll_rate_table, %struct.pistachio_pll_rate_table* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @PLL_INT_CTRL1_POSTDIV2_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = or i32 %176, %181
  %183 = load i32, i32* %11, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %11, align 4
  %185 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @PLL_CTRL1, align 4
  %188 = call i32 @pll_writel(%struct.pistachio_clk_pll* %185, i32 %186, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %141
  %192 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %8, align 8
  %193 = call i32 @pll_lock(%struct.pistachio_clk_pll* %192)
  br label %194

194:                                              ; preds = %191, %141
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %44, %29
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.pistachio_clk_pll* @to_pistachio_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_gf40lp_laint_is_enabled(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local %struct.pistachio_pll_rate_table* @pll_get_params(%struct.pistachio_clk_pll*, i64, i64) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

declare dso_local i32 @pll_readl(%struct.pistachio_clk_pll*, i32) #1

declare dso_local i32 @pll_writel(%struct.pistachio_clk_pll*, i32, i32) #1

declare dso_local i32 @pll_lock(%struct.pistachio_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
