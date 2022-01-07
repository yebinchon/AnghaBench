; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_clk_smd_rpm_handoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_clk_smd_rpm_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_smd_rpm = type { i32, i32, i32, i32, i32 }
%struct.clk_smd_rpm_req = type { i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@QCOM_SMD_RPM_ACTIVE_STATE = common dso_local global i32 0, align 4
@QCOM_SMD_RPM_SLEEP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_smd_rpm*)* @clk_smd_rpm_handoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_smd_rpm_handoff(%struct.clk_smd_rpm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_smd_rpm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_smd_rpm_req, align 4
  store %struct.clk_smd_rpm* %0, %struct.clk_smd_rpm** %3, align 8
  %6 = getelementptr inbounds %struct.clk_smd_rpm_req, %struct.clk_smd_rpm_req* %5, i32 0, i32 0
  %7 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %8 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @INT_MAX, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 1, %11 ], [ %13, %12 ]
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = getelementptr inbounds %struct.clk_smd_rpm_req, %struct.clk_smd_rpm_req* %5, i32 0, i32 1
  %18 = call i32 @cpu_to_le32(i32 4)
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.clk_smd_rpm_req, %struct.clk_smd_rpm_req* %5, i32 0, i32 2
  %20 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %21 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  store i32 %23, i32* %19, align 4
  %24 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %25 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @QCOM_SMD_RPM_ACTIVE_STATE, align 4
  %28 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %29 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %32 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qcom_rpm_smd_write(i32 %26, i32 %27, i32 %30, i32 %33, %struct.clk_smd_rpm_req* %5, i32 12)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %14
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %14
  %40 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %41 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QCOM_SMD_RPM_SLEEP_STATE, align 4
  %44 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %45 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %48 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qcom_rpm_smd_write(i32 %42, i32 %43, i32 %46, i32 %49, %struct.clk_smd_rpm_req* %5, i32 12)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %37
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qcom_rpm_smd_write(i32, i32, i32, i32, %struct.clk_smd_rpm_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
