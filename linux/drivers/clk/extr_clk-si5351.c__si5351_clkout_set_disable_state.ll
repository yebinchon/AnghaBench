; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_clkout_set_disable_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_clkout_set_disable_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si5351_driver_data = type { i32 }

@SI5351_CLK3_0_DISABLE_STATE = common dso_local global i32 0, align 4
@SI5351_CLK7_4_DISABLE_STATE = common dso_local global i32 0, align 4
@SI5351_CLK_DISABLE_STATE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI5351_CLK_DISABLE_STATE_LOW = common dso_local global i32 0, align 4
@SI5351_CLK_DISABLE_STATE_HIGH = common dso_local global i32 0, align 4
@SI5351_CLK_DISABLE_STATE_FLOAT = common dso_local global i32 0, align 4
@SI5351_CLK_DISABLE_STATE_NEVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si5351_driver_data*, i32, i32)* @_si5351_clkout_set_disable_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_si5351_clkout_set_disable_state(%struct.si5351_driver_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si5351_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.si5351_driver_data* %0, %struct.si5351_driver_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SI5351_CLK3_0_DISABLE_STATE, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @SI5351_CLK7_4_DISABLE_STATE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 2, %23
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 4
  %28 = mul nsw i32 2, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @SI5351_CLK_DISABLE_STATE_MASK, align 4
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %49 [
    i32 129, label %41
    i32 130, label %43
    i32 131, label %45
    i32 128, label %47
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @SI5351_CLK_DISABLE_STATE_LOW, align 4
  store i32 %42, i32* %11, align 4
  br label %50

43:                                               ; preds = %39
  %44 = load i32, i32* @SI5351_CLK_DISABLE_STATE_HIGH, align 4
  store i32 %44, i32* %11, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @SI5351_CLK_DISABLE_STATE_FLOAT, align 4
  store i32 %46, i32* %11, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @SI5351_CLK_DISABLE_STATE_NEVER, align 4
  store i32 %48, i32* %11, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %58

50:                                               ; preds = %47, %45, %43, %41
  %51 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %54, %55
  %57 = call i32 @si5351_set_bits(%struct.si5351_driver_data* %51, i32 %52, i32 %53, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %49, %36
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @si5351_set_bits(%struct.si5351_driver_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
