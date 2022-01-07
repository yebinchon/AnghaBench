; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.fapll_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ti_fapll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ti_fapll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fapll_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.fapll_data* @to_fapll(%struct.clk_hw* %11)
  store %struct.fapll_data* %12, %struct.fapll_data** %6, align 8
  %13 = load %struct.fapll_data*, %struct.fapll_data** %6, align 8
  %14 = call i64 @ti_fapll_clock_is_bypass(%struct.fapll_data* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %3, align 8
  br label %46

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.fapll_data*, %struct.fapll_data** %6, align 8
  %22 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @readl_relaxed(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @do_div(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %18
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 16
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %43, %16
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local %struct.fapll_data* @to_fapll(%struct.clk_hw*) #1

declare dso_local i64 @ti_fapll_clock_is_bypass(%struct.fapll_data*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
