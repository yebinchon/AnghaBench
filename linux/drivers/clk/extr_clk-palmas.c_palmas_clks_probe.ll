; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.palmas = type { i32 }
%struct.palmas_clks_of_match_data = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.palmas_clock_info = type { %struct.TYPE_10__, %struct.TYPE_8__*, %struct.palmas*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Fail to register clock %s, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Clock config failed, %d\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Fail to add clock driver, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_clks_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_clks_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.palmas_clks_of_match_data*, align 8
  %7 = alloca %struct.palmas_clock_info*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.palmas* @dev_get_drvdata(i32 %12)
  store %struct.palmas* %13, %struct.palmas** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.palmas_clks_of_match_data* @of_device_get_match_data(%struct.TYPE_9__* %19)
  store %struct.palmas_clks_of_match_data* %20, %struct.palmas_clks_of_match_data** %6, align 8
  %21 = load %struct.palmas_clks_of_match_data*, %struct.palmas_clks_of_match_data** %6, align 8
  %22 = icmp ne %struct.palmas_clks_of_match_data* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %100

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.palmas_clock_info* @devm_kzalloc(%struct.TYPE_9__* %26, i32 32, i32 %27)
  store %struct.palmas_clock_info* %28, %struct.palmas_clock_info** %7, align 8
  %29 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %30 = icmp ne %struct.palmas_clock_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %37 = call i32 @palmas_clks_get_clk_data(%struct.platform_device* %35, %struct.palmas_clock_info* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.palmas_clock_info* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %44 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %43, i32 0, i32 3
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.palmas*, %struct.palmas** %4, align 8
  %46 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %47 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %46, i32 0, i32 2
  store %struct.palmas* %45, %struct.palmas** %47, align 8
  %48 = load %struct.palmas_clks_of_match_data*, %struct.palmas_clks_of_match_data** %6, align 8
  %49 = getelementptr inbounds %struct.palmas_clks_of_match_data, %struct.palmas_clks_of_match_data* %48, i32 0, i32 0
  %50 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %51 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %50, i32 0, i32 1
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.palmas_clks_of_match_data*, %struct.palmas_clks_of_match_data** %6, align 8
  %53 = getelementptr inbounds %struct.palmas_clks_of_match_data, %struct.palmas_clks_of_match_data* %52, i32 0, i32 1
  %54 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %55 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %60 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %59, i32 0, i32 0
  %61 = call i32 @devm_clk_hw_register(%struct.TYPE_9__* %58, %struct.TYPE_10__* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %34
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.palmas_clks_of_match_data*, %struct.palmas_clks_of_match_data** %6, align 8
  %68 = getelementptr inbounds %struct.palmas_clks_of_match_data, %struct.palmas_clks_of_match_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %100

74:                                               ; preds = %34
  %75 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %76 = call i32 @palmas_clks_init_configure(%struct.palmas_clock_info* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %100

85:                                               ; preds = %74
  %86 = load %struct.device_node*, %struct.device_node** %5, align 8
  %87 = load i32, i32* @of_clk_hw_simple_get, align 4
  %88 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %7, align 8
  %89 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %88, i32 0, i32 0
  %90 = call i32 @of_clk_add_hw_provider(%struct.device_node* %86, i32 %87, %struct.TYPE_10__* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %85
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %79, %64, %31, %23
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #1

declare dso_local %struct.palmas_clks_of_match_data* @of_device_get_match_data(%struct.TYPE_9__*) #1

declare dso_local %struct.palmas_clock_info* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @palmas_clks_get_clk_data(%struct.platform_device*, %struct.palmas_clock_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.palmas_clock_info*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @palmas_clks_init_configure(%struct.palmas_clock_info*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
