; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_bpmp_clk = type { i32, i32 }
%struct.cmd_clk_set_rate_response = type { i32 }
%struct.cmd_clk_set_rate_request = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.cmd_clk_set_rate_response* }
%struct.TYPE_3__ = type { i32, %struct.tegra_bpmp_clk_message* }
%struct.tegra_bpmp_clk_message = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }

@CMD_CLK_SET_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @tegra_bpmp_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tegra_bpmp_clk*, align 8
  %8 = alloca %struct.cmd_clk_set_rate_response, align 4
  %9 = alloca %struct.cmd_clk_set_rate_request, align 8
  %10 = alloca %struct.tegra_bpmp_clk_message, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.tegra_bpmp_clk* @to_tegra_bpmp_clk(%struct.clk_hw* %11)
  store %struct.tegra_bpmp_clk* %12, %struct.tegra_bpmp_clk** %7, align 8
  %13 = bitcast %struct.cmd_clk_set_rate_request* %9 to %struct.tegra_bpmp_clk_message*
  %14 = call i32 @memset(%struct.tegra_bpmp_clk_message* %13, i32 0, i32 48)
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.cmd_clk_set_rate_request, %struct.cmd_clk_set_rate_request* %9, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = call i32 @memset(%struct.tegra_bpmp_clk_message* %10, i32 0, i32 48)
  %18 = load i32, i32* @CMD_CLK_SET_RATE, align 4
  %19 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %10, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %7, align 8
  %21 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %10, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = bitcast %struct.cmd_clk_set_rate_request* %9 to %struct.tegra_bpmp_clk_message*
  %25 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %10, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %struct.tegra_bpmp_clk_message* %24, %struct.tegra_bpmp_clk_message** %26, align 8
  %27 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %10, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 48, i32* %28, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %10, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store %struct.cmd_clk_set_rate_response* %8, %struct.cmd_clk_set_rate_response** %30, align 8
  %31 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %10, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %7, align 8
  %34 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tegra_bpmp_clk_transfer(i32 %35, %struct.tegra_bpmp_clk_message* %10)
  ret i32 %36
}

declare dso_local %struct.tegra_bpmp_clk* @to_tegra_bpmp_clk(%struct.clk_hw*) #1

declare dso_local i32 @memset(%struct.tegra_bpmp_clk_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_clk_transfer(i32, %struct.tegra_bpmp_clk_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
