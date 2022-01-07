; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_bpmp_clk = type { i32, i32, i32* }
%struct.cmd_clk_set_parent_response = type { i32 }
%struct.cmd_clk_set_parent_request = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.cmd_clk_set_parent_response* }
%struct.TYPE_3__ = type { i32, %struct.tegra_bpmp_clk_message* }
%struct.tegra_bpmp_clk_message = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }

@CMD_CLK_SET_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @tegra_bpmp_clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_clk_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_bpmp_clk*, align 8
  %7 = alloca %struct.cmd_clk_set_parent_response, align 4
  %8 = alloca %struct.cmd_clk_set_parent_request, align 8
  %9 = alloca %struct.tegra_bpmp_clk_message, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.tegra_bpmp_clk* @to_tegra_bpmp_clk(%struct.clk_hw* %11)
  store %struct.tegra_bpmp_clk* %12, %struct.tegra_bpmp_clk** %6, align 8
  %13 = bitcast %struct.cmd_clk_set_parent_request* %8 to %struct.tegra_bpmp_clk_message*
  %14 = call i32 @memset(%struct.tegra_bpmp_clk_message* %13, i32 0, i32 48)
  %15 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %6, align 8
  %16 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.cmd_clk_set_parent_request, %struct.cmd_clk_set_parent_request* %8, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = call i32 @memset(%struct.tegra_bpmp_clk_message* %9, i32 0, i32 48)
  %23 = load i32, i32* @CMD_CLK_SET_PARENT, align 4
  %24 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %6, align 8
  %26 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = bitcast %struct.cmd_clk_set_parent_request* %8 to %struct.tegra_bpmp_clk_message*
  %30 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.tegra_bpmp_clk_message* %29, %struct.tegra_bpmp_clk_message** %31, align 8
  %32 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 48, i32* %33, align 8
  %34 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store %struct.cmd_clk_set_parent_response* %7, %struct.cmd_clk_set_parent_response** %35, align 8
  %36 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %6, align 8
  %39 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @tegra_bpmp_clk_transfer(i32 %40, %struct.tegra_bpmp_clk_message* %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %3, align 4
  ret i32 %48
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
