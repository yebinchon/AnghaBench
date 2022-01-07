; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_plle_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_plle_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PLLE_MISC_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLE_MISC_SETUP_MASK = common dso_local global i32 0, align 4
@PLLE_MISC_READY = common dso_local global i32 0, align 4
@TEGRA_PLLE_CONFIGURE = common dso_local global i32 0, align 4
@PLLE_BASE_DIVCML_MASK = common dso_local global i32 0, align 4
@PLLE_BASE_DIVCML_SHIFT = common dso_local global i32 0, align 4
@PLLE_MISC_SETUP_VALUE = common dso_local global i32 0, align 4
@PLLE_SS_CTRL = common dso_local global i64 0, align 8
@PLLE_SS_COEFFICIENTS_MASK = common dso_local global i32 0, align 4
@PLLE_SS_DISABLE = common dso_local global i32 0, align 4
@PLL_BASE_BYPASS = common dso_local global i32 0, align 4
@PLL_BASE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_plle_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_plle_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.tegra_clk_pll*, align 8
  %5 = alloca %struct.tegra_clk_pll_freq_table, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %9)
  store %struct.tegra_clk_pll* %10, %struct.tegra_clk_pll** %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call i64 @clk_pll_is_enabled(%struct.clk_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %162

15:                                               ; preds = %1
  %16 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %17 = call i32 @clk_hw_get_parent(%struct.clk_hw* %16)
  %18 = call i64 @clk_hw_get_rate(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %20 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @_get_table_rate(%struct.clk_hw* %19, %struct.tegra_clk_pll_freq_table* %5, i32 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %162

31:                                               ; preds = %15
  %32 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %33 = call i32 @clk_pll_disable(%struct.clk_hw* %32)
  %34 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %35 = call i32 @pll_readl_misc(%struct.tegra_clk_pll* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @PLLE_MISC_LOCK_ENABLE, align 4
  %37 = load i32, i32* @PLLE_MISC_SETUP_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %44 = call i32 @pll_writel_misc(i32 %42, %struct.tegra_clk_pll* %43)
  %45 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %46 = call i32 @pll_readl_misc(%struct.tegra_clk_pll* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PLLE_MISC_READY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %31
  %52 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %53 = call i32 @clk_plle_training(%struct.tegra_clk_pll* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %162

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TEGRA_PLLE_CONFIGURE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %118

68:                                               ; preds = %59
  %69 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %70 = call i32 @pll_readl_base(%struct.tegra_clk_pll* %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %72 = call i32 @divp_mask_shifted(%struct.tegra_clk_pll* %71)
  %73 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %74 = call i32 @divn_mask_shifted(%struct.tegra_clk_pll* %73)
  %75 = or i32 %72, %74
  %76 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %77 = call i32 @divm_mask_shifted(%struct.tegra_clk_pll* %76)
  %78 = or i32 %75, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @PLLE_BASE_DIVCML_MASK, align 4
  %83 = load i32, i32* @PLLE_BASE_DIVCML_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %91 = call i32 @divm_shift(%struct.tegra_clk_pll* %90)
  %92 = shl i32 %89, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %5, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %98 = call i32 @divn_shift(%struct.tegra_clk_pll* %97)
  %99 = shl i32 %96, %98
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %5, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %105 = call i32 @divp_shift(%struct.tegra_clk_pll* %104)
  %106 = shl i32 %103, %105
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %5, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PLLE_BASE_DIVCML_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %117 = call i32 @pll_writel_base(i32 %115, %struct.tegra_clk_pll* %116)
  br label %118

118:                                              ; preds = %68, %59
  %119 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %120 = call i32 @pll_readl_misc(%struct.tegra_clk_pll* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @PLLE_MISC_SETUP_VALUE, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @PLLE_MISC_LOCK_ENABLE, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %129 = call i32 @pll_writel_misc(i32 %127, %struct.tegra_clk_pll* %128)
  %130 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %131 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PLLE_SS_CTRL, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @readl(i64 %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* @PLLE_SS_COEFFICIENTS_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* @PLLE_SS_DISABLE, align 4
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %145 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PLLE_SS_CTRL, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  %150 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %151 = call i32 @pll_readl_base(%struct.tegra_clk_pll* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* @PLL_BASE_BYPASS, align 4
  %153 = load i32, i32* @PLL_BASE_ENABLE, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %159 = call i32 @pll_writel_base(i32 %157, %struct.tegra_clk_pll* %158)
  %160 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %161 = call i32 @clk_pll_wait_for_lock(%struct.tegra_clk_pll* %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %118, %56, %28, %14
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i64 @clk_pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(i32) #1

declare dso_local i32 @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @_get_table_rate(%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i32, i64) #1

declare dso_local i32 @clk_pll_disable(%struct.clk_hw*) #1

declare dso_local i32 @pll_readl_misc(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_writel_misc(i32, %struct.tegra_clk_pll*) #1

declare dso_local i32 @clk_plle_training(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_readl_base(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divp_mask_shifted(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divn_mask_shifted(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divm_mask_shifted(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divm_shift(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divn_shift(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divp_shift(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_writel_base(i32, %struct.tegra_clk_pll*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_pll_wait_for_lock(%struct.tegra_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
