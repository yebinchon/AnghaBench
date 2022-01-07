; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_clk = type { %struct.iproc_pll*, %struct.iproc_clk_ctrl* }
%struct.iproc_pll = type { i64 }
%struct.iproc_clk_ctrl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @iproc_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_clk_enable(%struct.clk_hw* %0) #0 {
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
  %15 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %16 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %33 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %34 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %37 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @iproc_pll_write(%struct.iproc_pll* %32, i64 %35, i64 %39, i32 %40)
  %42 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %43 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %44, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %52 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %60 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %61 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %4, align 8
  %64 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @iproc_pll_write(%struct.iproc_pll* %59, i64 %62, i64 %66, i32 %67)
  ret i32 0
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
