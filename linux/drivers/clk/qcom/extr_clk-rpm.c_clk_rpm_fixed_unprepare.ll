; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_fixed_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_fixed_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rpm = type { i32, i32, i32 }

@QCOM_RPM_ACTIVE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_rpm_fixed_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_rpm_fixed_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_rpm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw* %6)
  store %struct.clk_rpm* %7, %struct.clk_rpm** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %9 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QCOM_RPM_ACTIVE_STATE, align 4
  %12 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %13 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @qcom_rpm_write(i32 %10, i32 %11, i32 %14, i32* %4, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %20 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw*) #1

declare dso_local i32 @qcom_rpm_write(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
