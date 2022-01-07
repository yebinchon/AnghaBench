; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_scu = type { i32, i32 }

@ccm_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: clk unprepare failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_scu_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_scu_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_scu*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_scu* @to_clk_scu(%struct.clk_hw* %5)
  store %struct.clk_scu* %6, %struct.clk_scu** %3, align 8
  %7 = load i32, i32* @ccm_ipc_handle, align 4
  %8 = load %struct.clk_scu*, %struct.clk_scu** %3, align 8
  %9 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.clk_scu*, %struct.clk_scu** %3, align 8
  %12 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sc_pm_clock_enable(i32 %7, i32 %10, i32 %13, i32 0, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %19 = call i32 @clk_hw_get_name(%struct.clk_hw* %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.clk_scu* @to_clk_scu(%struct.clk_hw*) #1

declare dso_local i32 @sc_pm_clock_enable(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
