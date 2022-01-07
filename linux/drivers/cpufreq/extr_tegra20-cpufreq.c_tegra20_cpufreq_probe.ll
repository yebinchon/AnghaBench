; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra20_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra20_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra20_cpufreq = type { i8*, i8*, i8*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.tegra20_cpufreq*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cclk\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@cpufreq_generic_get = common dso_local global i32 0, align 4
@cpufreq_generic_attr = common dso_local global i32 0, align 4
@tegra_cpu_init = common dso_local global i32 0, align 4
@tegra_cpu_exit = common dso_local global i32 0, align 4
@CPUFREQ_NEED_INITIAL_FREQ_CHECK = common dso_local global i32 0, align 4
@cpufreq_generic_frequency_table_verify = common dso_local global i32 0, align 4
@cpufreq_generic_suspend = common dso_local global i32 0, align 4
@tegra_target = common dso_local global i32 0, align 4
@tegra_get_intermediate = common dso_local global i32 0, align 4
@tegra_target_intermediate = common dso_local global i32 0, align 4
@CPUFREQ_NAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"tegra\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra20_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra20_cpufreq*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tegra20_cpufreq* @devm_kzalloc(i32* %7, i32 88, i32 %8)
  store %struct.tegra20_cpufreq* %9, %struct.tegra20_cpufreq** %4, align 8
  %10 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %11 = icmp ne %struct.tegra20_cpufreq* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %138

15:                                               ; preds = %1
  %16 = call i8* @clk_get_sys(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %18 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %20 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %26 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @PTR_ERR(i8* %27)
  store i32 %28, i32* %2, align 4
  br label %138

29:                                               ; preds = %15
  %30 = call i8* @clk_get_sys(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %32 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %34 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %40 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %5, align 4
  br label %132

43:                                               ; preds = %29
  %44 = call i8* @clk_get_sys(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %46 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %48 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %54 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %5, align 4
  br label %127

57:                                               ; preds = %43
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %61 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %60, i32 0, i32 4
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* @cpufreq_generic_get, align 4
  %63 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %64 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 11
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @cpufreq_generic_attr, align 4
  %67 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %68 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 10
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @tegra_cpu_init, align 4
  %71 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %72 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 9
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @tegra_cpu_exit, align 4
  %75 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %76 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 8
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @CPUFREQ_NEED_INITIAL_FREQ_CHECK, align 4
  %79 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %80 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 7
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @cpufreq_generic_frequency_table_verify, align 4
  %83 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %84 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 6
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @cpufreq_generic_suspend, align 4
  %87 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %88 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 8
  %90 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %91 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %92 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store %struct.tegra20_cpufreq* %90, %struct.tegra20_cpufreq** %93, align 8
  %94 = load i32, i32* @tegra_target, align 4
  %95 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %96 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @tegra_get_intermediate, align 4
  %99 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %100 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @tegra_target_intermediate, align 4
  %103 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %104 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %107 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CPUFREQ_NAME_LEN, align 4
  %111 = call i32 @snprintf(i32 %109, i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %113 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %112, i32 0, i32 3
  %114 = call i32 @cpufreq_register_driver(%struct.TYPE_2__* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %57
  br label %122

118:                                              ; preds = %57
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.tegra20_cpufreq* %120)
  store i32 0, i32* %2, align 4
  br label %138

122:                                              ; preds = %117
  %123 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %124 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @clk_put(i8* %125)
  br label %127

127:                                              ; preds = %122, %52
  %128 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %129 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @clk_put(i8* %130)
  br label %132

132:                                              ; preds = %127, %38
  %133 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %4, align 8
  %134 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @clk_put(i8* %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %132, %118, %24, %12
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.tegra20_cpufreq* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @clk_get_sys(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @cpufreq_register_driver(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra20_cpufreq*) #1

declare dso_local i32 @clk_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
