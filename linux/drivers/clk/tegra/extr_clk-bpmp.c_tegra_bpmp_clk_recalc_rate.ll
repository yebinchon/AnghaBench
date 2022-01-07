; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_bpmp_clk = type { i32, i32 }
%struct.cmd_clk_get_rate_response = type { i64 }
%struct.cmd_clk_get_rate_request = type { i32 }
%struct.tegra_bpmp_clk_message = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.cmd_clk_get_rate_response* }
%struct.TYPE_3__ = type { i32, %struct.cmd_clk_get_rate_request* }

@CMD_CLK_GET_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @tegra_bpmp_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tegra_bpmp_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_bpmp_clk*, align 8
  %7 = alloca %struct.cmd_clk_get_rate_response, align 8
  %8 = alloca %struct.cmd_clk_get_rate_request, align 4
  %9 = alloca %struct.tegra_bpmp_clk_message, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.tegra_bpmp_clk* @to_tegra_bpmp_clk(%struct.clk_hw* %11)
  store %struct.tegra_bpmp_clk* %12, %struct.tegra_bpmp_clk** %6, align 8
  %13 = call i32 @memset(%struct.tegra_bpmp_clk_message* %9, i32 0, i32 40)
  %14 = load i32, i32* @CMD_CLK_GET_RATE, align 4
  %15 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store %struct.cmd_clk_get_rate_request* %8, %struct.cmd_clk_get_rate_request** %21, align 8
  %22 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.cmd_clk_get_rate_response* %7, %struct.cmd_clk_get_rate_response** %25, align 8
  %26 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 8, i32* %27, align 8
  %28 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tegra_bpmp_clk_transfer(i32 %30, %struct.tegra_bpmp_clk_message* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %3, align 8
  br label %40

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.cmd_clk_get_rate_response, %struct.cmd_clk_get_rate_response* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64, i64* %3, align 8
  ret i64 %41
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
