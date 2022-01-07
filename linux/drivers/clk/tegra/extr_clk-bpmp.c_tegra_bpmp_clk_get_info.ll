; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.tegra_bpmp_clk_info = type { i32, i32, i32*, i32 }
%struct.cmd_clk_get_all_info_response = type { i32, i32, i32*, i32 }
%struct.tegra_bpmp_clk_message = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.cmd_clk_get_all_info_response* }

@CMD_CLK_GET_ALL_INFO = common dso_local global i32 0, align 4
@MRQ_CLK_NAME_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, i32, %struct.tegra_bpmp_clk_info*)* @tegra_bpmp_clk_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_clk_get_info(%struct.tegra_bpmp* %0, i32 %1, %struct.tegra_bpmp_clk_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_bpmp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_bpmp_clk_info*, align 8
  %8 = alloca %struct.cmd_clk_get_all_info_response, align 8
  %9 = alloca %struct.tegra_bpmp_clk_message, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tegra_bpmp_clk_info* %2, %struct.tegra_bpmp_clk_info** %7, align 8
  %12 = call i32 @memset(%struct.tegra_bpmp_clk_message* %9, i32 0, i32 32)
  %13 = load i32, i32* @CMD_CLK_GET_ALL_INFO, align 4
  %14 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.cmd_clk_get_all_info_response* %8, %struct.cmd_clk_get_all_info_response** %18, align 8
  %19 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %9, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 24, i32* %20, align 8
  %21 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %22 = call i32 @tegra_bpmp_clk_transfer(%struct.tegra_bpmp* %21, %struct.tegra_bpmp_clk_message* %9)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %3
  %28 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.cmd_clk_get_all_info_response, %struct.cmd_clk_get_all_info_response* %8, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MRQ_CLK_NAME_MAXLEN, align 4
  %34 = call i32 @strlcpy(i32 %30, i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.cmd_clk_get_all_info_response, %struct.cmd_clk_get_all_info_response* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %38 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %58, %27
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %42 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.cmd_clk_get_all_info_response, %struct.cmd_clk_get_all_info_response* %8, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %53 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %39

61:                                               ; preds = %39
  %62 = getelementptr inbounds %struct.cmd_clk_get_all_info_response, %struct.cmd_clk_get_all_info_response* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %65 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.tegra_bpmp_clk_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_clk_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_message*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
