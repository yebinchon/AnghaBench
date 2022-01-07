; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_lpasscc-sdm845.c_lpass_cc_sdm845_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_lpasscc-sdm845.c_lpass_cc_sdm845_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.qcom_cc_desc = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@lpass_regmap_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@lpass_cc_sdm845_desc = common dso_local global %struct.qcom_cc_desc zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"qdsp6ss\00", align 1
@lpass_qdsp6ss_sdm845_desc = common dso_local global %struct.qcom_cc_desc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpass_cc_sdm845_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_cc_sdm845_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_cc_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpass_regmap_config, i32 0, i32 0), align 8
  store %struct.qcom_cc_desc* @lpass_cc_sdm845_desc, %struct.qcom_cc_desc** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %4, align 8
  %8 = call i32 @qcom_cc_probe_by_index(%struct.platform_device* %6, i32 0, %struct.qcom_cc_desc* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpass_regmap_config, i32 0, i32 0), align 8
  store %struct.qcom_cc_desc* @lpass_qdsp6ss_sdm845_desc, %struct.qcom_cc_desc** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %4, align 8
  %16 = call i32 @qcom_cc_probe_by_index(%struct.platform_device* %14, i32 1, %struct.qcom_cc_desc* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @qcom_cc_probe_by_index(%struct.platform_device*, i32, %struct.qcom_cc_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
