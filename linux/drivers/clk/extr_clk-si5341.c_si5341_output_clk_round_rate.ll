; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @si5341_output_clk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si5341_output_clk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = load i64, i64* %9, align 8
  %11 = lshr i64 %10, 1
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = urem i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %4, align 8
  br label %51

21:                                               ; preds = %14, %3
  %22 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %23 = call i32 @clk_hw_get_flags(%struct.clk_hw* %22)
  %24 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = icmp ugt i64 %28, 200000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 2, i64* %8, align 8
  br label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = udiv i64 400000000, %32
  %34 = and i64 %33, -2
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = mul i64 %36, %37
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  br label %49

40:                                               ; preds = %21
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = udiv i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = shl i64 %46, 1
  %48 = udiv i64 %45, %47
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %19
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
