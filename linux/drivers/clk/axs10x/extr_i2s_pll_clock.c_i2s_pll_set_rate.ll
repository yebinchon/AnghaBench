; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.i2s_pll_clk = type { i32 }
%struct.i2s_pll_cfg = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid parent rate=%ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PLL_IDIV_REG = common dso_local global i32 0, align 4
@PLL_FBDIV_REG = common dso_local global i32 0, align 4
@PLL_ODIV0_REG = common dso_local global i32 0, align 4
@PLL_ODIV1_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid rate=%ld, parent_rate=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @i2s_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2s_pll_clk*, align 8
  %9 = alloca %struct.i2s_pll_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.i2s_pll_clk* @to_i2s_pll_clk(%struct.clk_hw* %11)
  store %struct.i2s_pll_clk* %12, %struct.i2s_pll_clk** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.i2s_pll_cfg* @i2s_pll_get_cfg(i64 %13)
  store %struct.i2s_pll_cfg* %14, %struct.i2s_pll_cfg** %9, align 8
  %15 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %16 = icmp ne %struct.i2s_pll_cfg* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %8, align 8
  %19 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %93

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %81, %25
  %27 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %27, i64 %29
  %31 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %26
  %35 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %35, i64 %37
  %39 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %34
  %44 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %8, align 8
  %45 = load i32, i32* @PLL_IDIV_REG, align 4
  %46 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %46, i64 %48
  %50 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @i2s_pll_write(%struct.i2s_pll_clk* %44, i32 %45, i32 %51)
  %53 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %8, align 8
  %54 = load i32, i32* @PLL_FBDIV_REG, align 4
  %55 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %55, i64 %57
  %59 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @i2s_pll_write(%struct.i2s_pll_clk* %53, i32 %54, i32 %60)
  %62 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %8, align 8
  %63 = load i32, i32* @PLL_ODIV0_REG, align 4
  %64 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %64, i64 %66
  %68 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @i2s_pll_write(%struct.i2s_pll_clk* %62, i32 %63, i32 %69)
  %71 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %8, align 8
  %72 = load i32, i32* @PLL_ODIV1_REG, align 4
  %73 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %73, i64 %75
  %77 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @i2s_pll_write(%struct.i2s_pll_clk* %71, i32 %72, i32 %78)
  store i32 0, i32* %4, align 4
  br label %93

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %26

84:                                               ; preds = %26
  %85 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %8, align 8
  %86 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %84, %43, %17
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.i2s_pll_clk* @to_i2s_pll_clk(%struct.clk_hw*) #1

declare dso_local %struct.i2s_pll_cfg* @i2s_pll_get_cfg(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @i2s_pll_write(%struct.i2s_pll_clk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
