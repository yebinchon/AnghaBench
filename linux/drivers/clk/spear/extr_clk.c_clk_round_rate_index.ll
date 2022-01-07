; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk.c_clk_round_rate_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk.c_clk_round_rate_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_round_rate_index(%struct.clk_hw* %0, i64 %1, i64 %2, i64 (%struct.clk_hw*, i64, i32)* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64 (%struct.clk_hw*, i64, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 (%struct.clk_hw*, i64, i32)* %3, i64 (%struct.clk_hw*, i64, i32)** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %43, %6
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64 (%struct.clk_hw*, i64, i32)*, i64 (%struct.clk_hw*, i64, i32)** %10, align 8
  %24 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 %23(%struct.clk_hw* %24, i64 %25, i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %14, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %32
  br label %47

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %16

47:                                               ; preds = %41, %16
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i64, i64* %14, align 8
  ret i64 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
