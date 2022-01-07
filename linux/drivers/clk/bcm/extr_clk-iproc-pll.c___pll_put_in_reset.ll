; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_put_in_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_put_in_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pll = type { i64, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_reset_ctrl }
%struct.iproc_pll_reset_ctrl = type { i64, i32, i32 }

@IPROC_CLK_PLL_RESET_ACTIVE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pll*)* @__pll_put_in_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pll_put_in_reset(%struct.iproc_pll* %0) #0 {
  %2 = alloca %struct.iproc_pll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iproc_pll_ctrl*, align 8
  %5 = alloca %struct.iproc_pll_reset_ctrl*, align 8
  store %struct.iproc_pll* %0, %struct.iproc_pll** %2, align 8
  %6 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %7 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %6, i32 0, i32 1
  %8 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %7, align 8
  store %struct.iproc_pll_ctrl* %8, %struct.iproc_pll_ctrl** %4, align 8
  %9 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %9, i32 0, i32 1
  store %struct.iproc_pll_reset_ctrl* %10, %struct.iproc_pll_reset_ctrl** %5, align 8
  %11 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %12 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IPROC_CLK_PLL_RESET_ACTIVE_LOW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %5, align 8
  %27 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %5, align 8
  %31 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @BIT(i32 %32)
  %34 = or i32 %29, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %1
  %38 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %5, align 8
  %39 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %5, align 8
  %43 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @BIT(i32 %44)
  %46 = or i32 %41, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %37, %25
  %51 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %52 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %53 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %5, align 8
  %56 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @iproc_pll_write(%struct.iproc_pll* %51, i64 %54, i64 %57, i32 %58)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iproc_pll_write(%struct.iproc_pll*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
