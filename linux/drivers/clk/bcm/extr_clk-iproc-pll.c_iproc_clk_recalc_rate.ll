; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_clk = type { %struct.iproc_pll*, %struct.iproc_clk_ctrl* }
%struct.iproc_pll = type { i64 }
%struct.iproc_clk_ctrl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@IPROC_CLK_MCLK_DIV_BY_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @iproc_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iproc_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iproc_clk*, align 8
  %7 = alloca %struct.iproc_clk_ctrl*, align 8
  %8 = alloca %struct.iproc_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw* %12)
  store %struct.iproc_clk* %13, %struct.iproc_clk** %6, align 8
  %14 = load %struct.iproc_clk*, %struct.iproc_clk** %6, align 8
  %15 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %14, i32 0, i32 1
  %16 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %15, align 8
  store %struct.iproc_clk_ctrl* %16, %struct.iproc_clk_ctrl** %7, align 8
  %17 = load %struct.iproc_clk*, %struct.iproc_clk** %6, align 8
  %18 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %17, i32 0, i32 0
  %19 = load %struct.iproc_pll*, %struct.iproc_pll** %18, align 8
  store %struct.iproc_pll* %19, %struct.iproc_pll** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.iproc_pll*, %struct.iproc_pll** %8, align 8
  %25 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %7, align 8
  %28 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %26, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %7, align 8
  %35 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = lshr i32 %33, %37
  %39 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %7, align 8
  %40 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bit_mask(i32 %42)
  %44 = and i32 %38, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  store i32 256, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %23
  %49 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %7, align 8
  %50 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IPROC_CLK_MCLK_DIV_BY_2, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = mul i32 %57, 2
  %59 = zext i32 %58 to i64
  %60 = udiv i64 %56, %59
  store i64 %60, i64* %11, align 8
  br label %66

61:                                               ; preds = %48
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = udiv i64 %62, %64
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %66, %22
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bit_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
