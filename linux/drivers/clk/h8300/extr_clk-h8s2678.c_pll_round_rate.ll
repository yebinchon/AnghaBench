; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/h8300/extr_clk-h8s2678.c_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/h8300/extr_clk-h8s2678.c_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@MAX_FREQ = common dso_local global i64 0, align 8
@MIN_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i64], align 16
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MAX_FREQ, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @MAX_FREQ, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MIN_FREQ, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @MIN_FREQ, align 8
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %19, %15
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %28, %31
  %33 = sub i64 %26, %32
  %34 = call i64 @abs(i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %36
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %67, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %8, align 4
  br label %66

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  br label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %48
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %42

70:                                               ; preds = %42
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %72, %75
  ret i64 %76
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
