; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_divider_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_divider_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cdce706_hw_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @cdce706_divider_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce706_divider_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdce706_hw_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %8 = call %struct.cdce706_hw_data* @to_hw_data(%struct.clk_hw* %7)
  store %struct.cdce706_hw_data* %8, %struct.cdce706_hw_data** %6, align 8
  %9 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %10 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %18 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %20 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %23 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CDCE706_DIVIDER_PLL(i32 %24)
  %26 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %27 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CDCE706_DIVIDER_PLL_MASK(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %6, align 8
  %32 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CDCE706_DIVIDER_PLL_SHIFT(i32 %33)
  %35 = shl i32 %30, %34
  %36 = call i32 @cdce706_reg_update(i32 %21, i32 %25, i32 %29, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %15, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.cdce706_hw_data* @to_hw_data(%struct.clk_hw*) #1

declare dso_local i32 @cdce706_reg_update(i32, i32, i32, i32) #1

declare dso_local i32 @CDCE706_DIVIDER_PLL(i32) #1

declare dso_local i32 @CDCE706_DIVIDER_PLL_MASK(i32) #1

declare dso_local i32 @CDCE706_DIVIDER_PLL_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
