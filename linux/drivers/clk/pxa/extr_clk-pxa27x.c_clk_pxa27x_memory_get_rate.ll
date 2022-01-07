; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_clk_pxa27x_memory_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_clk_pxa27x_memory_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@CCCR = common dso_local global i32 0, align 4
@CCSR = common dso_local global i32 0, align 4
@CCCR_CPDIS_BIT = common dso_local global i32 0, align 4
@CCCR_A_BIT = common dso_local global i32 0, align 4
@CCSR_L_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pxa27x_memory_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pxa27x_memory_get_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @CCCR, align 4
  %12 = call i64 @readl(i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* @CCSR, align 4
  %14 = call i64 @readl(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* @CCCR_CPDIS_BIT, align 4
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  %19 = and i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @CCCR_A_BIT, align 4
  %23 = shl i32 1, %22
  %24 = sext i32 %23 to i64
  %25 = and i64 %21, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @CCSR_L_MASK, align 8
  %29 = and i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %2
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %3, align 8
  br label %52

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ule i32 %39, 10
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %3, align 8
  br label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp ule i32 %44, 20
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = udiv i64 %47, 2
  store i64 %48, i64* %3, align 8
  br label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = udiv i64 %50, 4
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %49, %46, %41, %36
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
