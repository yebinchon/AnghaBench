; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-smd.c_at91sam9x5_clk_smd_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-smd.c_at91sam9x5_clk_smd_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@SMD_MAX_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @at91sam9x5_clk_smd_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at91sam9x5_clk_smd_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  br label %53

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @SMD_MAX_DIV, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SMD_MAX_DIV, align 8
  %30 = add i64 %29, 1
  %31 = udiv i64 %28, %30
  store i64 %31, i64* %4, align 8
  br label %53

32:                                               ; preds = %18
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %9, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  %41 = udiv i64 %38, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %45, %46
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %49, %32
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %26, %15
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
