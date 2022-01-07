; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.palmas_clock_info = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@PALMAS_RESOURCE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @palmas_clks_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_clks_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.palmas_clock_info*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.palmas_clock_info* @to_palmas_clks_info(%struct.clk_hw* %5)
  store %struct.palmas_clock_info* %6, %struct.palmas_clock_info** %3, align 8
  %7 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %8 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %11 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %12 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %17 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %22 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @palmas_update_bits(i32 %9, i32 %10, i32 %15, i32 %20, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %31 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %34 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %55

40:                                               ; preds = %1
  %41 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %42 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %49 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @udelay(i64 %52)
  br label %54

54:                                               ; preds = %47, %40
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.palmas_clock_info* @to_palmas_clks_info(%struct.clk_hw*) #1

declare dso_local i32 @palmas_update_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
