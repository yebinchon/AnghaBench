; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_get_max_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_get_max_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.cmd_clk_get_max_clk_id_response = type { i64 }
%struct.tegra_bpmp_clk_message = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.cmd_clk_get_max_clk_id_response* }

@CMD_CLK_GET_MAX_CLK_ID = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*)* @tegra_bpmp_clk_get_max_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_clk_get_max_id(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca %struct.cmd_clk_get_max_clk_id_response, align 8
  %5 = alloca %struct.tegra_bpmp_clk_message, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %7 = call i32 @memset(%struct.tegra_bpmp_clk_message* %5, i32 0, i32 24)
  %8 = load i32, i32* @CMD_CLK_GET_MAX_CLK_ID, align 4
  %9 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %5, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.cmd_clk_get_max_clk_id_response* %4, %struct.cmd_clk_get_max_clk_id_response** %11, align 8
  %12 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 8, i32* %13, align 8
  %14 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %15 = call i32 @tegra_bpmp_clk_transfer(%struct.tegra_bpmp* %14, %struct.tegra_bpmp_clk_message* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.cmd_clk_get_max_clk_id_response, %struct.cmd_clk_get_max_clk_id_response* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INT_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @E2BIG, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.cmd_clk_get_max_clk_id_response, %struct.cmd_clk_get_max_clk_id_response* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %25, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @memset(%struct.tegra_bpmp_clk_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_clk_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
