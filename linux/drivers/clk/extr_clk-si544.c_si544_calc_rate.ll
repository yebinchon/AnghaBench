; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_calc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si544_muldiv = type { i32 }

@DELTA_M_FRAC_NUM = common dso_local global i32 0, align 4
@DELTA_M_MAX = common dso_local global i64 0, align 8
@DELTA_M_FRAC_DEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_si544_muldiv*)* @si544_calc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si544_calc_rate(%struct.clk_si544_muldiv* %0) #0 {
  %2 = alloca %struct.clk_si544_muldiv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.clk_si544_muldiv* %0, %struct.clk_si544_muldiv** %2, align 8
  %5 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %2, align 8
  %6 = call i64 @si544_calc_center_rate(%struct.clk_si544_muldiv* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @DELTA_M_FRAC_NUM, align 4
  %10 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %2, align 8
  %11 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = mul nsw i32 %8, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %2, align 8
  %16 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i64, i64* @DELTA_M_MAX, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @DELTA_M_FRAC_DEN, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sdiv i32 %23, 2
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load i64, i64* @DELTA_M_MAX, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @DELTA_M_FRAC_DEN, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 2
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* @DELTA_M_MAX, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @DELTA_M_FRAC_DEN, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @div64_s64(i32 %36, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  ret i64 %45
}

declare dso_local i64 @si544_calc_center_rate(%struct.clk_si544_muldiv*) #1

declare dso_local i32 @div64_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
