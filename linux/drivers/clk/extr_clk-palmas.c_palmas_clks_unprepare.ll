; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.palmas_clock_info = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@PALMAS_RESOURCE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @palmas_clks_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmas_clks_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.palmas_clock_info*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.palmas_clock_info* @to_palmas_clks_info(%struct.clk_hw* %5)
  store %struct.palmas_clock_info* %6, %struct.palmas_clock_info** %3, align 8
  %7 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %8 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %14 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %17 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %18 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %23 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @palmas_update_bits(i32 %15, i32 %16, i32 %21, i32 %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %12
  %31 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %32 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %35 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %11, %30, %12
  ret void
}

declare dso_local %struct.palmas_clock_info* @to_palmas_clks_info(%struct.clk_hw*) #1

declare dso_local i32 @palmas_update_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
