; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_calc_center_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_calc_center_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si544_muldiv = type { i32, i64, i64, i32 }

@FXO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_si544_muldiv*)* @si544_calc_center_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si544_calc_center_rate(%struct.clk_si544_muldiv* %0) #0 {
  %2 = alloca %struct.clk_si544_muldiv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.clk_si544_muldiv* %0, %struct.clk_si544_muldiv** %2, align 8
  %5 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %2, align 8
  %6 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %2, align 8
  %9 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @BIT(i32 %10)
  %12 = mul nsw i32 %7, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %2, align 8
  %14 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @FXO, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @FXO, align 4
  %20 = sdiv i32 %19, 2
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %2, align 8
  %26 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @FXO, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @do_div(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  ret i64 %37
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
