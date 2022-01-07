; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_clkout_set_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_clkout_set_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si5351_driver_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SI5351_CLK_DRIVE_STRENGTH_2MA = common dso_local global i32 0, align 4
@SI5351_CLK_DRIVE_STRENGTH_4MA = common dso_local global i32 0, align 4
@SI5351_CLK_DRIVE_STRENGTH_6MA = common dso_local global i32 0, align 4
@SI5351_CLK_DRIVE_STRENGTH_8MA = common dso_local global i32 0, align 4
@SI5351_CLK0_CTRL = common dso_local global i64 0, align 8
@SI5351_CLK_DRIVE_STRENGTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si5351_driver_data*, i32, i32)* @_si5351_clkout_set_drive_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_si5351_clkout_set_drive_strength(%struct.si5351_driver_data* %0, i32 %1, i32 %2) #0 {
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
  br label %34

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %24 [
    i32 131, label %16
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @SI5351_CLK_DRIVE_STRENGTH_2MA, align 4
  store i32 %17, i32* %8, align 4
  br label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @SI5351_CLK_DRIVE_STRENGTH_4MA, align 4
  store i32 %19, i32* %8, align 4
  br label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @SI5351_CLK_DRIVE_STRENGTH_6MA, align 4
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @SI5351_CLK_DRIVE_STRENGTH_8MA, align 4
  store i32 %23, i32* %8, align 4
  br label %25

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %34

25:                                               ; preds = %22, %20, %18, %16
  %26 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %5, align 8
  %27 = load i64, i64* @SI5351_CLK0_CTRL, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* @SI5351_CLK_DRIVE_STRENGTH_MASK, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @si5351_set_bits(%struct.si5351_driver_data* %26, i64 %30, i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %24, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @si5351_set_bits(%struct.si5351_driver_data*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
