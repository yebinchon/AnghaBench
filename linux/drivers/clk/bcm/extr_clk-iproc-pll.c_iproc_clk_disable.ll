; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_clk = type { %struct.iproc_pll*, %struct.iproc_clk_ctrl* }
%struct.iproc_pll = type { i64 }
%struct.iproc_clk_ctrl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@IPROC_CLK_AON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @iproc_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.iproc_clk*, align 8
  %4 = alloca %struct.iproc_clk_ctrl*, align 8
  %5 = alloca %struct.iproc_pll*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw* %7)
  store %struct.iproc_clk* %8, %struct.iproc_clk** %3, align 8
  %9 = load %struct.iproc_clk*, %struct.iproc_clk** %3, align 8
  %10 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %9, i32 0, i32 1
  %11 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %10, align 8
  store %struct.iproc_clk_ctrl* %11, %struct.iproc_clk_ctrl** %4, align 8
  %12 = load %struct.iproc_clk*, %struct.iproc_clk** %3, align 8
  %13 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %12, i32 0, i32 0
  %14 = load %struct.iproc_pll*, %struct.iproc_pll** %13, align 8
  store %struct.iproc_pll* %14, %struct.iproc_pll** %5, align 8
  %15 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IPROC_CLK_AON, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %24 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %40 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %41 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %44 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @iproc_pll_write(%struct.iproc_pll* %39, i64 %42, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @iproc_pll_write(%struct.iproc_pll*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
