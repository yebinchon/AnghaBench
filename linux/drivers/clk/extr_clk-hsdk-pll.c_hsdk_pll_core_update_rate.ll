; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_core_update_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_core_update_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsdk_pll_clk = type { i32 }
%struct.hsdk_pll_cfg = type { i32 }

@CORE_IF_CLK_THRESHOLD_HZ = common dso_local global i64 0, align 8
@CREG_CORE_IF_CLK_DIV_2 = common dso_local global i32 0, align 4
@HSDK_PLL_MAX_LOCK_TIME = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CREG_CORE_IF_CLK_DIV_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsdk_pll_clk*, i64, %struct.hsdk_pll_cfg*)* @hsdk_pll_core_update_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsdk_pll_core_update_rate(%struct.hsdk_pll_clk* %0, i64 %1, %struct.hsdk_pll_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsdk_pll_clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hsdk_pll_cfg*, align 8
  store %struct.hsdk_pll_clk* %0, %struct.hsdk_pll_clk** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hsdk_pll_cfg* %2, %struct.hsdk_pll_cfg** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @CORE_IF_CLK_THRESHOLD_HZ, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @CREG_CORE_IF_CLK_DIV_2, align 4
  %13 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %14 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iowrite32(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %19 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %7, align 8
  %20 = call i32 @hsdk_pll_set_cfg(%struct.hsdk_pll_clk* %18, %struct.hsdk_pll_cfg* %19)
  %21 = load i32, i32* @HSDK_PLL_MAX_LOCK_TIME, align 4
  %22 = call i32 @udelay(i32 %21)
  %23 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %24 = call i32 @hsdk_pll_is_locked(%struct.hsdk_pll_clk* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %31 = call i64 @hsdk_pll_is_err(%struct.hsdk_pll_clk* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @CORE_IF_CLK_THRESHOLD_HZ, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @CREG_CORE_IF_CLK_DIV_1, align 4
  %42 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %43 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iowrite32(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %36
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %33, %26
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @hsdk_pll_set_cfg(%struct.hsdk_pll_clk*, %struct.hsdk_pll_cfg*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hsdk_pll_is_locked(%struct.hsdk_pll_clk*) #1

declare dso_local i64 @hsdk_pll_is_err(%struct.hsdk_pll_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
