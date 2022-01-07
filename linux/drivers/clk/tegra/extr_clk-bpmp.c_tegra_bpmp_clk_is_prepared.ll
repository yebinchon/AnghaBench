; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_is_prepared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_is_prepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_bpmp_clk = type { i32, i32 }
%struct.cmd_clk_is_enabled_response = type { i32 }
%struct.tegra_bpmp_clk_message = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.cmd_clk_is_enabled_response* }

@CMD_CLK_IS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @tegra_bpmp_clk_is_prepared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_clk_is_prepared(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.tegra_bpmp_clk*, align 8
  %5 = alloca %struct.cmd_clk_is_enabled_response, align 4
  %6 = alloca %struct.tegra_bpmp_clk_message, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.tegra_bpmp_clk* @to_tegra_bpmp_clk(%struct.clk_hw* %8)
  store %struct.tegra_bpmp_clk* %9, %struct.tegra_bpmp_clk** %4, align 8
  %10 = call i32 @memset(%struct.tegra_bpmp_clk_message* %6, i32 0, i32 24)
  %11 = load i32, i32* @CMD_CLK_IS_ENABLED, align 4
  %12 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.cmd_clk_is_enabled_response* %5, %struct.cmd_clk_is_enabled_response** %18, align 8
  %19 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tegra_bpmp_clk_transfer(i32 %23, %struct.tegra_bpmp_clk_message* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.cmd_clk_is_enabled_response, %struct.cmd_clk_is_enabled_response* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
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
