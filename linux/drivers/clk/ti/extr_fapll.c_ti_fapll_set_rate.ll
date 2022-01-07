; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.fapll_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FAPLL_MAIN_CLEAR_MASK = common dso_local global i32 0, align 4
@FAPLL_MAIN_DIV_P_SHIFT = common dso_local global i32 0, align 4
@FAPLL_MAIN_MULT_N_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ti_fapll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_fapll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fapll_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.fapll_data* @to_fapll(%struct.clk_hw* %13)
  store %struct.fapll_data* %14, %struct.fapll_data** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ti_fapll_set_div_mult(i64 %21, i64 %22, i32* %9, i32* %10)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %20
  %29 = load %struct.fapll_data*, %struct.fapll_data** %8, align 8
  %30 = call i32 @ti_fapll_set_bypass(%struct.fapll_data* %29)
  %31 = load %struct.fapll_data*, %struct.fapll_data** %8, align 8
  %32 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @readl_relaxed(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @FAPLL_MAIN_CLEAR_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @FAPLL_MAIN_DIV_P_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @FAPLL_MAIN_MULT_N_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.fapll_data*, %struct.fapll_data** %8, align 8
  %51 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @writel_relaxed(i32 %49, i32 %52)
  %54 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %55 = call i64 @ti_fapll_is_enabled(%struct.clk_hw* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %28
  %58 = load %struct.fapll_data*, %struct.fapll_data** %8, align 8
  %59 = call i32 @ti_fapll_wait_lock(%struct.fapll_data* %58)
  br label %60

60:                                               ; preds = %57, %28
  %61 = load %struct.fapll_data*, %struct.fapll_data** %8, align 8
  %62 = call i32 @ti_fapll_clear_bypass(%struct.fapll_data* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %26, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.fapll_data* @to_fapll(%struct.clk_hw*) #1

declare dso_local i32 @ti_fapll_set_div_mult(i64, i64, i32*, i32*) #1

declare dso_local i32 @ti_fapll_set_bypass(%struct.fapll_data*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i64 @ti_fapll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @ti_fapll_wait_lock(%struct.fapll_data*) #1

declare dso_local i32 @ti_fapll_clear_bypass(%struct.fapll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
