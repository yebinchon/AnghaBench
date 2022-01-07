; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-lpt.c_lpt_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-lpt.c_lpt_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpss_clk_data = type { i8*, %struct.clk* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"lpss_clk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpt_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpss_clk_data*, align 8
  %5 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lpss_clk_data* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.lpss_clk_data* %9, %struct.lpss_clk_data** %4, align 8
  %10 = load %struct.lpss_clk_data*, %struct.lpss_clk_data** %4, align 8
  %11 = icmp ne %struct.lpss_clk_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.lpss_clk_data*, %struct.lpss_clk_data** %4, align 8
  %17 = getelementptr inbounds %struct.lpss_clk_data, %struct.lpss_clk_data* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.lpss_clk_data*, %struct.lpss_clk_data** %4, align 8
  %21 = getelementptr inbounds %struct.lpss_clk_data, %struct.lpss_clk_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call %struct.clk* @clk_register_fixed_rate(i32* %19, i8* %22, i32* null, i32 0, i32 100000000)
  store %struct.clk* %23, %struct.clk** %5, align 8
  %24 = load %struct.clk*, %struct.clk** %5, align 8
  %25 = call i64 @IS_ERR(%struct.clk* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.clk*, %struct.clk** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.clk* %28)
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %15
  %31 = load %struct.clk*, %struct.clk** %5, align 8
  %32 = load %struct.lpss_clk_data*, %struct.lpss_clk_data** %4, align 8
  %33 = getelementptr inbounds %struct.lpss_clk_data, %struct.lpss_clk_data* %32, i32 0, i32 1
  store %struct.clk* %31, %struct.clk** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.lpss_clk_data*, %struct.lpss_clk_data** %4, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.lpss_clk_data* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %27, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.lpss_clk_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.clk* @clk_register_fixed_rate(i32*, i8*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpss_clk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
