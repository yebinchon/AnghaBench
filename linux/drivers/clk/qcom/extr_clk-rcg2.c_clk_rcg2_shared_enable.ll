; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_shared_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_shared_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_rcg2_shared_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg2_shared_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rcg2*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %6)
  store %struct.clk_rcg2* %7, %struct.clk_rcg2** %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call i32 @clk_rcg2_set_force_enable(%struct.clk_hw* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %16 = call i32 @update_config(%struct.clk_rcg2* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %23 = call i32 @clk_rcg2_clear_force_enable(%struct.clk_hw* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %19, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local i32 @clk_rcg2_set_force_enable(%struct.clk_hw*) #1

declare dso_local i32 @update_config(%struct.clk_rcg2*) #1

declare dso_local i32 @clk_rcg2_clear_force_enable(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
