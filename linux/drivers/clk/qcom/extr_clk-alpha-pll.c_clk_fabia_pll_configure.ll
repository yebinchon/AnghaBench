; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_fabia_pll_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_fabia_pll_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_alpha_pll = type { i32 }
%struct.regmap = type { i32 }
%struct.alpha_pll_config = type { i64, i64, i64, i64, i64 }

@PLL_UPDATE_BYPASS = common dso_local global i64 0, align 8
@PLL_RESET_N = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_fabia_pll_configure(%struct.clk_alpha_pll* %0, %struct.regmap* %1, %struct.alpha_pll_config* %2) #0 {
  %4 = alloca %struct.clk_alpha_pll*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.alpha_pll_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk_alpha_pll* %0, %struct.clk_alpha_pll** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  store %struct.alpha_pll_config* %2, %struct.alpha_pll_config** %6, align 8
  %9 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %10 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.regmap*, %struct.regmap** %5, align 8
  %15 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %16 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %15)
  %17 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %18 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @regmap_write(%struct.regmap* %14, i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %23 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %29 = call i32 @PLL_FRAC(%struct.clk_alpha_pll* %28)
  %30 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %31 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @regmap_write(%struct.regmap* %27, i32 %29, i64 %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %36 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.regmap*, %struct.regmap** %5, align 8
  %41 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %42 = call i32 @PLL_CONFIG_CTL(%struct.clk_alpha_pll* %41)
  %43 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %44 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @regmap_write(%struct.regmap* %40, i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %49 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %54 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %57 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  %59 = load %struct.regmap*, %struct.regmap** %5, align 8
  %60 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %61 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %60)
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @regmap_update_bits(%struct.regmap* %59, i32 %61, i64 %62, i64 %63)
  br label %65

65:                                               ; preds = %52, %47
  %66 = load %struct.regmap*, %struct.regmap** %5, align 8
  %67 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %68 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %67)
  %69 = load i64, i64* @PLL_UPDATE_BYPASS, align 8
  %70 = load i64, i64* @PLL_UPDATE_BYPASS, align 8
  %71 = call i32 @regmap_update_bits(%struct.regmap* %66, i32 %68, i64 %69, i64 %70)
  %72 = load %struct.regmap*, %struct.regmap** %5, align 8
  %73 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %74 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %73)
  %75 = load i64, i64* @PLL_RESET_N, align 8
  %76 = load i64, i64* @PLL_RESET_N, align 8
  %77 = call i32 @regmap_update_bits(%struct.regmap* %72, i32 %74, i64 %75, i64 %76)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i64) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_FRAC(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_CONFIG_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i64, i64) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
