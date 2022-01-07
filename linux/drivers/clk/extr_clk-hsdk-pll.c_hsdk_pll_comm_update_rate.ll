; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_comm_update_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_comm_update_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsdk_pll_clk = type { i32 }
%struct.hsdk_pll_cfg = type { i32 }

@HSDK_PLL_MAX_LOCK_TIME = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsdk_pll_clk*, i64, %struct.hsdk_pll_cfg*)* @hsdk_pll_comm_update_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsdk_pll_comm_update_rate(%struct.hsdk_pll_clk* %0, i64 %1, %struct.hsdk_pll_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsdk_pll_clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hsdk_pll_cfg*, align 8
  store %struct.hsdk_pll_clk* %0, %struct.hsdk_pll_clk** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hsdk_pll_cfg* %2, %struct.hsdk_pll_cfg** %7, align 8
  %8 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %9 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %7, align 8
  %10 = call i32 @hsdk_pll_set_cfg(%struct.hsdk_pll_clk* %8, %struct.hsdk_pll_cfg* %9)
  %11 = load i32, i32* @HSDK_PLL_MAX_LOCK_TIME, align 4
  %12 = call i32 @udelay(i32 %11)
  %13 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %14 = call i32 @hsdk_pll_is_locked(%struct.hsdk_pll_clk* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ETIMEDOUT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %5, align 8
  %21 = call i64 @hsdk_pll_is_err(%struct.hsdk_pll_clk* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %23, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

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
