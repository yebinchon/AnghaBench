; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_clk = type { %struct.iproc_pll*, %struct.iproc_clk_ctrl* }
%struct.iproc_pll = type { i64 }
%struct.iproc_clk_ctrl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPROC_CLK_MCLK_DIV_BY_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @iproc_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iproc_clk*, align 8
  %9 = alloca %struct.iproc_clk_ctrl*, align 8
  %10 = alloca %struct.iproc_pll*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw* %13)
  store %struct.iproc_clk* %14, %struct.iproc_clk** %8, align 8
  %15 = load %struct.iproc_clk*, %struct.iproc_clk** %8, align 8
  %16 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %15, i32 0, i32 1
  %17 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %16, align 8
  store %struct.iproc_clk_ctrl* %17, %struct.iproc_clk_ctrl** %9, align 8
  %18 = load %struct.iproc_clk*, %struct.iproc_clk** %8, align 8
  %19 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %18, i32 0, i32 0
  %20 = load %struct.iproc_pll*, %struct.iproc_pll** %19, align 8
  store %struct.iproc_pll* %20, %struct.iproc_pll** %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %107

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @DIV_ROUND_CLOSEST(i64 %30, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %34 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IPROC_CLK_MCLK_DIV_BY_2, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = udiv i32 %40, 2
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i32, i32* %12, align 4
  %44 = icmp ugt i32 %43, 256
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %107

48:                                               ; preds = %42
  %49 = load %struct.iproc_pll*, %struct.iproc_pll** %10, align 8
  %50 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %53 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %60, label %74

60:                                               ; preds = %48
  %61 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %62 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bit_mask(i32 %64)
  %66 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %67 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %65, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %96

74:                                               ; preds = %48
  %75 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %76 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bit_mask(i32 %78)
  %80 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %81 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %79, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %90 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %88, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %74, %60
  %97 = load %struct.iproc_pll*, %struct.iproc_pll** %10, align 8
  %98 = load %struct.iproc_pll*, %struct.iproc_pll** %10, align 8
  %99 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.iproc_clk_ctrl*, %struct.iproc_clk_ctrl** %9, align 8
  %102 = getelementptr inbounds %struct.iproc_clk_ctrl, %struct.iproc_clk_ctrl* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @iproc_pll_write(%struct.iproc_pll* %97, i64 %100, i64 %104, i32 %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %96, %45, %26
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bit_mask(i32) #1

declare dso_local i32 @iproc_pll_write(%struct.iproc_pll*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
