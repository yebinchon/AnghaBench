; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8998.c_gcc_msm8998_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8998.c_gcc_msm8998_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }

@gcc_msm8998_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gcc_msm8998_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcc_msm8998_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.regmap* @qcom_cc_map(%struct.platform_device* %6, i32* @gcc_msm8998_desc)
  store %struct.regmap* %7, %struct.regmap** %4, align 8
  %8 = load %struct.regmap*, %struct.regmap** %4, align 8
  %9 = call i64 @IS_ERR(%struct.regmap* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.regmap* %12)
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.regmap*, %struct.regmap** %4, align 8
  %16 = call i32 @BIT(i32 21)
  %17 = call i32 @BIT(i32 21)
  %18 = call i32 @regmap_update_bits(%struct.regmap* %15, i32 335880, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = call i32 @qcom_cc_really_probe(%struct.platform_device* %24, i32* @gcc_msm8998_desc, %struct.regmap* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %21, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.regmap* @qcom_cc_map(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qcom_cc_really_probe(%struct.platform_device*, i32*, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
