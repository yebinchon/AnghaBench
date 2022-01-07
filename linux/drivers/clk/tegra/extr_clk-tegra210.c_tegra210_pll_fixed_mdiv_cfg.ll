; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pll_fixed_mdiv_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pll_fixed_mdiv_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll_freq_table = type { i64, i32, i64, i64, i64, i64 }
%struct.tegra_clk_pll = type { %struct.tegra_clk_pll_params* }
%struct.tegra_clk_pll_params = type { i32, i64, i32 (i32, i32*)*, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TEGRA_PLL_VCO_OUT = common dso_local global i32 0, align 4
@PLL_SDM_COEFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64)* @tegra210_pll_fixed_mdiv_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_pll_fixed_mdiv_cfg(%struct.clk_hw* %0, %struct.tegra_clk_pll_freq_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.tegra_clk_pll_freq_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tegra_clk_pll*, align 8
  %11 = alloca %struct.tegra_clk_pll_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store %struct.tegra_clk_pll_freq_table* %1, %struct.tegra_clk_pll_freq_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %19 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %18)
  store %struct.tegra_clk_pll* %19, %struct.tegra_clk_pll** %10, align 8
  %20 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %21 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %20, i32 0, i32 0
  %22 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %21, align 8
  store %struct.tegra_clk_pll_params* %22, %struct.tegra_clk_pll_params** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %184

28:                                               ; preds = %4
  %29 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %30 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TEGRA_PLL_VCO_OUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  %36 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %37 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @DIV_ROUND_UP(i64 %38, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %42 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %41, i32 0, i32 2
  %43 = load i32 (i32, i32*)*, i32 (i32, i32*)** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 %43(i32 %44, i32* %15)
  store i32 %45, i32* %12, align 4
  br label %58

46:                                               ; preds = %28
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %49 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %52
  %57 = phi i32 [ 1, %52 ], [ %55, %53 ]
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %35
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %184

64:                                               ; preds = %58
  %65 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @tegra_pll_get_fixed_mdiv(%struct.clk_hw* %65, i64 %66)
  %68 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %69 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %72 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %74 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %75 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @tegra_pll_p_div_to_hw(%struct.tegra_clk_pll* %73, i32 %76)
  %78 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %79 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %80, %82
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %86 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ugt i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %64
  %90 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %91 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %89, %64
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %96 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = udiv i64 %94, %97
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %13, align 8
  %101 = udiv i64 %99, %100
  %102 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %103 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %105 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %104, i32 0, i32 5
  store i64 0, i64* %105, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %108 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %110 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %162

113:                                              ; preds = %93
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %117 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = mul i64 %115, %118
  %120 = sub i64 %114, %119
  store i64 %120, i64* %16, align 8
  %121 = load i64, i64* %16, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %113
  %124 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %11, align 8
  %125 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123, %113
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* @PLL_SDM_COEFF, align 8
  %131 = mul i64 %129, %130
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @do_div(i64 %132, i64 %133)
  %135 = load i64, i64* @PLL_SDM_COEFF, align 8
  %136 = udiv i64 %135, 2
  %137 = load i64, i64* %17, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = call i64 @sdin_din_to_data(i64 %139)
  %141 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %142 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %141, i32 0, i32 5
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %128, %123
  %144 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %145 = call i64 @sdin_get_n_eff(%struct.tegra_clk_pll_freq_table* %144)
  %146 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %147 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = mul i64 %148, %145
  store i64 %149, i64* %147, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %153 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = mul i64 %151, %154
  %156 = load i64, i64* @PLL_SDM_COEFF, align 8
  %157 = mul i64 %155, %156
  %158 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %159 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = udiv i64 %160, %157
  store i64 %161, i64* %159, align 8
  br label %180

162:                                              ; preds = %93
  %163 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %164 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %167 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = mul i64 %168, %165
  store i64 %169, i64* %167, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %173 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = mul i64 %171, %174
  %176 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %177 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = udiv i64 %178, %175
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %162, %143
  %181 = load i64, i64* %9, align 8
  %182 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %183 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %182, i32 0, i32 4
  store i64 %181, i64* %183, align 8
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %180, %61, %25
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @tegra_pll_get_fixed_mdiv(%struct.clk_hw*, i64) #1

declare dso_local i32 @tegra_pll_p_div_to_hw(%struct.tegra_clk_pll*, i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @sdin_din_to_data(i64) #1

declare dso_local i64 @sdin_get_n_eff(%struct.tegra_clk_pll_freq_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
