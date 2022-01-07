; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_pll_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_pll_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si5351_driver_data = type { i64 }

@SI5351_PLLA_SOURCE = common dso_local global i32 0, align 4
@SI5351_PLLB_SOURCE = common dso_local global i32 0, align 4
@SI5351_PLL_SRC_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI5351_VARIANT_C = common dso_local global i64 0, align 8
@SI5351_PLL_SRC_XTAL = common dso_local global i32 0, align 4
@SI5351_PLL_INPUT_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si5351_driver_data*, i32, i32)* @_si5351_pll_reparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_si5351_pll_reparent(%struct.si5351_driver_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si5351_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si5351_driver_data* %0, %struct.si5351_driver_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @SI5351_PLLA_SOURCE, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @SI5351_PLLB_SOURCE, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SI5351_PLL_SRC_DEFAULT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %53

27:                                               ; preds = %21
  %28 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %5, align 8
  %29 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SI5351_VARIANT_C, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SI5351_PLL_SRC_XTAL, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %33, %27
  %41 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %5, align 8
  %42 = load i32, i32* @SI5351_PLL_INPUT_SOURCE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SI5351_PLL_SRC_XTAL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 0, %47 ], [ %49, %48 ]
  %52 = call i32 @si5351_set_bits(%struct.si5351_driver_data* %41, i32 %42, i32 %43, i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %37, %24, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @si5351_set_bits(%struct.si5351_driver_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
