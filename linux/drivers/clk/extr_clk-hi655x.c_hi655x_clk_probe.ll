; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hi655x.c_hi655x_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hi655x.c_hi655x_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hi655x_pmic = type { i32 }
%struct.hi655x_clk = type { %struct.TYPE_7__, %struct.hi655x_pmic* }
%struct.TYPE_7__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"hi655x-clk\00", align 1
@hi655x_clk_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi655x_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi655x_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hi655x_pmic*, align 8
  %6 = alloca %struct.hi655x_clk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.hi655x_pmic* @dev_get_drvdata(%struct.device* %14)
  store %struct.hi655x_pmic* %15, %struct.hi655x_pmic** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i32* @hi655x_clk_ops, i32** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.hi655x_clk* @devm_kzalloc(%struct.TYPE_6__* %20, i32 16, i32 %21)
  store %struct.hi655x_clk* %22, %struct.hi655x_clk** %6, align 8
  %23 = load %struct.hi655x_clk*, %struct.hi655x_clk** %6, align 8
  %24 = icmp ne %struct.hi655x_clk* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %58

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @of_property_read_string_index(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i8** %7)
  %33 = load %struct.hi655x_clk*, %struct.hi655x_clk** %6, align 8
  %34 = getelementptr inbounds %struct.hi655x_clk, %struct.hi655x_clk* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %35, align 8
  %36 = load %struct.hi655x_pmic*, %struct.hi655x_pmic** %5, align 8
  %37 = load %struct.hi655x_clk*, %struct.hi655x_clk** %6, align 8
  %38 = getelementptr inbounds %struct.hi655x_clk, %struct.hi655x_clk* %37, i32 0, i32 1
  store %struct.hi655x_pmic* %36, %struct.hi655x_pmic** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.hi655x_clk*, %struct.hi655x_clk** %6, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.hi655x_clk* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.hi655x_clk*, %struct.hi655x_clk** %6, align 8
  %45 = getelementptr inbounds %struct.hi655x_clk, %struct.hi655x_clk* %44, i32 0, i32 0
  %46 = call i32 @devm_clk_hw_register(%struct.TYPE_6__* %43, %struct.TYPE_7__* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %28
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %58

51:                                               ; preds = %28
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* @of_clk_hw_simple_get, align 4
  %55 = load %struct.hi655x_clk*, %struct.hi655x_clk** %6, align 8
  %56 = getelementptr inbounds %struct.hi655x_clk, %struct.hi655x_clk* %55, i32 0, i32 0
  %57 = call i32 @devm_of_clk_add_hw_provider(%struct.TYPE_6__* %53, i32 %54, %struct.TYPE_7__* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %49, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.hi655x_pmic* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.hi655x_clk* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hi655x_clk*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
