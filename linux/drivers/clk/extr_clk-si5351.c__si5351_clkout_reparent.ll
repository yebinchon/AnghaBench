; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_clkout_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_clkout_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si5351_driver_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SI5351_CLK_INPUT_MULTISYNTH_N = common dso_local global i32 0, align 4
@SI5351_CLK_INPUT_MULTISYNTH_0_4 = common dso_local global i32 0, align 4
@SI5351_CLK_INPUT_XTAL = common dso_local global i32 0, align 4
@SI5351_VARIANT_C = common dso_local global i32 0, align 4
@SI5351_CLK_INPUT_CLKIN = common dso_local global i32 0, align 4
@SI5351_CLK0_CTRL = common dso_local global i64 0, align 8
@SI5351_CLK_INPUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si5351_driver_data*, i32, i32)* @_si5351_clkout_reparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_si5351_clkout_reparent(%struct.si5351_driver_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si5351_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si5351_driver_data* %0, %struct.si5351_driver_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %42 [
    i32 129, label %16
    i32 130, label %18
    i32 128, label %29
    i32 131, label %31
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @SI5351_CLK_INPUT_MULTISYNTH_N, align 4
  store i32 %17, i32* %8, align 4
  br label %43

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @SI5351_CLK_INPUT_MULTISYNTH_N, align 4
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @SI5351_CLK_INPUT_MULTISYNTH_0_4, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %43

29:                                               ; preds = %14
  %30 = load i32, i32* @SI5351_CLK_INPUT_XTAL, align 4
  store i32 %30, i32* %8, align 4
  br label %43

31:                                               ; preds = %14
  %32 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %5, align 8
  %33 = getelementptr inbounds %struct.si5351_driver_data, %struct.si5351_driver_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SI5351_VARIANT_C, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %31
  %41 = load i32, i32* @SI5351_CLK_INPUT_CLKIN, align 4
  store i32 %41, i32* %8, align 4
  br label %43

42:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %52

43:                                               ; preds = %40, %29, %28, %16
  %44 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %5, align 8
  %45 = load i64, i64* @SI5351_CLK0_CTRL, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* @SI5351_CLK_INPUT_MASK, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @si5351_set_bits(%struct.si5351_driver_data* %44, i64 %48, i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %42, %37, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @si5351_set_bits(%struct.si5351_driver_data*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
