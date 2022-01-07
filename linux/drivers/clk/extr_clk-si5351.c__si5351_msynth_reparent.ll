; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_msynth_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c__si5351_msynth_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si5351_driver_data = type { i32 }

@SI5351_MULTISYNTH_SRC_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI5351_CLK0_CTRL = common dso_local global i64 0, align 8
@SI5351_CLK_PLL_SELECT = common dso_local global i32 0, align 4
@SI5351_MULTISYNTH_SRC_VCO0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si5351_driver_data*, i32, i32)* @_si5351_msynth_reparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_si5351_msynth_reparent(%struct.si5351_driver_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si5351_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.si5351_driver_data* %0, %struct.si5351_driver_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SI5351_MULTISYNTH_SRC_DEFAULT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %12
  %19 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %5, align 8
  %20 = load i64, i64* @SI5351_CLK0_CTRL, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* @SI5351_CLK_PLL_SELECT, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SI5351_MULTISYNTH_SRC_VCO0, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @SI5351_CLK_PLL_SELECT, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  %33 = call i32 @si5351_set_bits(%struct.si5351_driver_data* %19, i64 %23, i32 %24, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %15, %11
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
