; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_xo_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_xo_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rpm = type { i32, i32, i32, i32, %struct.rpm_cc* }
%struct.rpm_cc = type { i32, i32 }

@QCOM_RPM_XO_MODE_ON = common dso_local global i32 0, align 4
@QCOM_RPM_ACTIVE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_rpm_xo_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rpm_xo_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_rpm*, align 8
  %4 = alloca %struct.rpm_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw* %8)
  store %struct.clk_rpm* %9, %struct.clk_rpm** %3, align 8
  %10 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %11 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %10, i32 0, i32 4
  %12 = load %struct.rpm_cc*, %struct.rpm_cc** %11, align 8
  store %struct.rpm_cc* %12, %struct.rpm_cc** %4, align 8
  %13 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %14 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %17 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %20 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @QCOM_RPM_XO_MODE_ON, align 4
  %23 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %24 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = or i32 %21, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %29 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QCOM_RPM_ACTIVE_STATE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @qcom_rpm_write(i32 %30, i32 %31, i32 %32, i32* %7, i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %1
  %37 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %38 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %41 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.rpm_cc*, %struct.rpm_cc** %4, align 8
  %44 = getelementptr inbounds %struct.rpm_cc, %struct.rpm_cc* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qcom_rpm_write(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
