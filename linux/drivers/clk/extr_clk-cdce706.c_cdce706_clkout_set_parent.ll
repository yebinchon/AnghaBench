; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_clkout_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_clkout_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cdce706_hw_data = type { i64, i32, i32 }

@CDCE706_CLKOUT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @cdce706_clkout_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce706_clkout_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cdce706_hw_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %8 = call %struct.cdce706_hw_data* @to_hw_data(%struct.clk_hw* %7)
  store %struct.cdce706_hw_data* %8, %struct.cdce706_hw_data** %6, align 8
  %9 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %10 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %18 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %20 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %23 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CDCE706_CLKOUT(i32 %24)
  %26 = load i32, i32* @CDCE706_CLKOUT_ENABLE_MASK, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @cdce706_reg_update(i32 %21, i32 %25, i32 %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %15, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.cdce706_hw_data* @to_hw_data(%struct.clk_hw*) #1

declare dso_local i32 @cdce706_reg_update(i32, i32, i32, i64) #1

declare dso_local i32 @CDCE706_CLKOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
