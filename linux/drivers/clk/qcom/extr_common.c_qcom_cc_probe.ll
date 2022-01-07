; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c_qcom_cc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c_qcom_cc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.qcom_cc_desc = type { i32 }
%struct.regmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_cc_probe(%struct.platform_device* %0, %struct.qcom_cc_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.qcom_cc_desc*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.qcom_cc_desc* %1, %struct.qcom_cc_desc** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %5, align 8
  %9 = call %struct.regmap* @qcom_cc_map(%struct.platform_device* %7, %struct.qcom_cc_desc* %8)
  store %struct.regmap* %9, %struct.regmap** %6, align 8
  %10 = load %struct.regmap*, %struct.regmap** %6, align 8
  %11 = call i64 @IS_ERR(%struct.regmap* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.regmap*, %struct.regmap** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.regmap* %14)
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %5, align 8
  %19 = load %struct.regmap*, %struct.regmap** %6, align 8
  %20 = call i32 @qcom_cc_really_probe(%struct.platform_device* %17, %struct.qcom_cc_desc* %18, %struct.regmap* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.regmap* @qcom_cc_map(%struct.platform_device*, %struct.qcom_cc_desc*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @qcom_cc_really_probe(%struct.platform_device*, %struct.qcom_cc_desc*, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
