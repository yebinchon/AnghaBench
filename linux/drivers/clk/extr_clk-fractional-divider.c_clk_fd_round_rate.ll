; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fractional-divider.c_clk_fd_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fractional-divider.c_clk_fd_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fractional_divider = type { i32 (%struct.clk_hw*, i64, i64*, i64*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_fd_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_fd_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_fractional_divider*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw* %12)
  store %struct.clk_fractional_divider* %13, %struct.clk_fractional_divider** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %18 = call i32 @clk_hw_can_set_rate_parent(%struct.clk_hw* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %3
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  br label %55

28:                                               ; preds = %20, %16
  %29 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %8, align 8
  %30 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %29, i32 0, i32 0
  %31 = load i32 (%struct.clk_hw*, i64, i64*, i64*, i64*)*, i32 (%struct.clk_hw*, i64, i64*, i64*, i64*)** %30, align 8
  %32 = icmp ne i32 (%struct.clk_hw*, i64, i64*, i64*, i64*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %8, align 8
  %35 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %34, i32 0, i32 0
  %36 = load i32 (%struct.clk_hw*, i64, i64*, i64*, i64*)*, i32 (%struct.clk_hw*, i64, i64*, i64*, i64*)** %35, align 8
  %37 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 %36(%struct.clk_hw* %37, i64 %38, i64* %39, i64* %9, i64* %10)
  br label %46

41:                                               ; preds = %28
  %42 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = call i32 @clk_fd_general_approximation(%struct.clk_hw* %42, i64 %43, i64* %44, i64* %9, i64* %10)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = mul i64 %48, %49
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @do_div(i64 %51, i64 %52)
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %46, %25
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_can_set_rate_parent(%struct.clk_hw*) #1

declare dso_local i32 @clk_fd_general_approximation(%struct.clk_hw*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
