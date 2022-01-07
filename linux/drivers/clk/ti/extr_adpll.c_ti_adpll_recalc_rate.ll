; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ti_adpll_dco_data = type { i32 }
%struct.ti_adpll_data = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ADPLL_FRACDIV_OFFSET = common dso_local global i64 0, align 8
@ADPLL_FRACDIV_FRACTIONALM_MASK = common dso_local global i32 0, align 4
@ADPLL_MN2DIV_OFFSET = common dso_local global i64 0, align 8
@ADPLL_M2NDIV_OFFSET = common dso_local global i64 0, align 8
@ADPLL_CLKCTRL_OFFSET = common dso_local global i64 0, align 8
@ADPLL_CLKCTRL_REGM4XEN_ADPLL_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ti_adpll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ti_adpll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ti_adpll_dco_data*, align 8
  %7 = alloca %struct.ti_adpll_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.ti_adpll_dco_data* @to_dco(%struct.clk_hw* %13)
  store %struct.ti_adpll_dco_data* %14, %struct.ti_adpll_dco_data** %6, align 8
  %15 = load %struct.ti_adpll_dco_data*, %struct.ti_adpll_dco_data** %6, align 8
  %16 = call %struct.ti_adpll_data* @to_adpll(%struct.ti_adpll_dco_data* %15)
  store %struct.ti_adpll_data* %16, %struct.ti_adpll_data** %7, align 8
  %17 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %18 = call i64 @ti_adpll_clock_is_bypass(%struct.ti_adpll_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %92

21:                                               ; preds = %2
  %22 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %23 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %22, i32 0, i32 2
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %27 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ADPLL_FRACDIV_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @ADPLL_FRACDIV_FRACTIONALM_MASK, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %36 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ADPLL_MN2DIV_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readw_relaxed(i64 %39)
  %41 = shl i32 %40, 18
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %51 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ADPLL_M2NDIV_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readw_relaxed(i64 %54)
  %56 = add nsw i32 %55, 1
  %57 = shl i32 %56, 18
  store i32 %57, i32* %9, align 4
  %58 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %59 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %58, i32 0, i32 2
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @do_div(i32 %62, i32 %63)
  %65 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %66 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %21
  %72 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %7, align 8
  %73 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ADPLL_CLKCTRL_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readl_relaxed(i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ADPLL_CLKCTRL_REGM4XEN_ADPLL_S, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %84, 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %83, %71
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %21
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %89, %20
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local %struct.ti_adpll_dco_data* @to_dco(%struct.clk_hw*) #1

declare dso_local %struct.ti_adpll_data* @to_adpll(%struct.ti_adpll_dco_data*) #1

declare dso_local i64 @ti_adpll_clock_is_bypass(%struct.ti_adpll_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
