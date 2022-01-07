; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_loongson1-cpufreq.c_ls1x_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_loongson1-cpufreq.c_ls1x_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.clk*, %struct.clk*, %struct.clk*, %struct.clk*, i32* }
%struct.clk = type { i32 }
%struct.platform_device = type { i32 }
%struct.plat_ls1x_cpufreq = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"platform data missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cpufreq = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to get %s clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to get parent of %s clock\0A\00", align 1
@ls1x_cpufreq_driver = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to register CPUFreq driver: %d\0A\00", align 1
@ls1x_cpufreq_notifier_block = common dso_local global i32 0, align 4
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to register CPUFreq notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ls1x_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_ls1x_cpufreq*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.plat_ls1x_cpufreq* @dev_get_platdata(i32* %8)
  store %struct.plat_ls1x_cpufreq* %9, %struct.plat_ls1x_cpufreq** %4, align 8
  %10 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %11 = icmp ne %struct.plat_ls1x_cpufreq* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %14 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %19 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %12, %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %157

28:                                               ; preds = %17
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.TYPE_3__* @devm_kzalloc(i32* %30, i32 4, i32 %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** @cpufreq, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %157

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %46 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.clk* @devm_clk_get(i32* %44, i32 %47)
  store %struct.clk* %48, %struct.clk** %5, align 8
  %49 = load %struct.clk*, %struct.clk** %5, align 8
  %50 = call i64 @IS_ERR(%struct.clk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %38
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %56 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.clk*, %struct.clk** %5, align 8
  %60 = call i32 @PTR_ERR(%struct.clk* %59)
  store i32 %60, i32* %2, align 4
  br label %157

61:                                               ; preds = %38
  %62 = load %struct.clk*, %struct.clk** %5, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store %struct.clk* %62, %struct.clk** %64, align 8
  %65 = load %struct.clk*, %struct.clk** %5, align 8
  %66 = call %struct.clk* @clk_get_parent(%struct.clk* %65)
  store %struct.clk* %66, %struct.clk** %5, align 8
  %67 = load %struct.clk*, %struct.clk** %5, align 8
  %68 = call i64 @IS_ERR(%struct.clk* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load %struct.clk*, %struct.clk** %74, align 8
  %76 = call i32 @__clk_get_name(%struct.clk* %75)
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.clk*, %struct.clk** %5, align 8
  %79 = call i32 @PTR_ERR(%struct.clk* %78)
  store i32 %79, i32* %2, align 4
  br label %157

80:                                               ; preds = %61
  %81 = load %struct.clk*, %struct.clk** %5, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store %struct.clk* %81, %struct.clk** %83, align 8
  %84 = load %struct.clk*, %struct.clk** %5, align 8
  %85 = call %struct.clk* @clk_get_parent(%struct.clk* %84)
  store %struct.clk* %85, %struct.clk** %5, align 8
  %86 = load %struct.clk*, %struct.clk** %5, align 8
  %87 = call i64 @IS_ERR(%struct.clk* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %80
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load %struct.clk*, %struct.clk** %93, align 8
  %95 = call i32 @__clk_get_name(%struct.clk* %94)
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.clk*, %struct.clk** %5, align 8
  %98 = call i32 @PTR_ERR(%struct.clk* %97)
  store i32 %98, i32* %2, align 4
  br label %157

99:                                               ; preds = %80
  %100 = load %struct.clk*, %struct.clk** %5, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store %struct.clk* %100, %struct.clk** %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %106 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.clk* @devm_clk_get(i32* %104, i32 %107)
  store %struct.clk* %108, %struct.clk** %5, align 8
  %109 = load %struct.clk*, %struct.clk** %5, align 8
  %110 = call i64 @IS_ERR(%struct.clk* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %99
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %116 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.clk*, %struct.clk** %5, align 8
  %120 = call i32 @PTR_ERR(%struct.clk* %119)
  store i32 %120, i32* %2, align 4
  br label %157

121:                                              ; preds = %99
  %122 = load %struct.clk*, %struct.clk** %5, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store %struct.clk* %122, %struct.clk** %124, align 8
  %125 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %126 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.plat_ls1x_cpufreq*, %struct.plat_ls1x_cpufreq** %4, align 8
  %131 = getelementptr inbounds %struct.plat_ls1x_cpufreq, %struct.plat_ls1x_cpufreq* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpufreq, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = call i32 @cpufreq_register_driver(i32* @ls1x_cpufreq_driver)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %121
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %157

144:                                              ; preds = %121
  %145 = load i32, i32* @CPUFREQ_TRANSITION_NOTIFIER, align 4
  %146 = call i32 @cpufreq_register_notifier(i32* @ls1x_cpufreq_notifier_block, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* %6, align 4
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = call i32 @cpufreq_unregister_driver(i32* @ls1x_cpufreq_driver)
  br label %155

155:                                              ; preds = %149, %144
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %138, %112, %89, %70, %52, %35, %22
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.plat_ls1x_cpufreq* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get_parent(%struct.clk*) #1

declare dso_local i32 @__clk_get_name(%struct.clk*) #1

declare dso_local i32 @cpufreq_register_driver(i32*) #1

declare dso_local i32 @cpufreq_register_notifier(i32*, i32) #1

declare dso_local i32 @cpufreq_unregister_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
