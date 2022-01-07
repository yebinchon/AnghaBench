; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_clk_smd_rpm_set_rate_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_clk_smd_rpm_set_rate_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_smd_rpm = type { i32, i32, i32, i32 }
%struct.clk_smd_rpm_req = type { i32, i32, i32 }

@QCOM_SMD_RPM_SLEEP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_smd_rpm*, i64)* @clk_smd_rpm_set_rate_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_smd_rpm_set_rate_sleep(%struct.clk_smd_rpm* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_smd_rpm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_smd_rpm_req, align 4
  store %struct.clk_smd_rpm* %0, %struct.clk_smd_rpm** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = getelementptr inbounds %struct.clk_smd_rpm_req, %struct.clk_smd_rpm_req* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @DIV_ROUND_UP(i64 %7, i32 1000)
  %9 = call i32 @cpu_to_le32(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.clk_smd_rpm_req, %struct.clk_smd_rpm_req* %5, i32 0, i32 1
  %11 = call i32 @cpu_to_le32(i32 4)
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.clk_smd_rpm_req, %struct.clk_smd_rpm_req* %5, i32 0, i32 2
  %13 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %14 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %18 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QCOM_SMD_RPM_SLEEP_STATE, align 4
  %21 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %22 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %25 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @qcom_rpm_smd_write(i32 %19, i32 %20, i32 %23, i32 %26, %struct.clk_smd_rpm_req* %5, i32 12)
  ret i32 %27
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @qcom_rpm_smd_write(i32, i32, i32, i32, %struct.clk_smd_rpm_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
