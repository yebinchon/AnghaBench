; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_raspberrypi-cpufreq.c_raspberrypi_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_raspberrypi-cpufreq.c_raspberrypi_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Cannot get CPU for cpufreq driver\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot get clock for CPU0\0A\00", align 1
@RASPBERRYPI_FREQ_INTERVAL = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@cpufreq_dt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to create platform device, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @raspberrypi_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raspberrypi_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = call %struct.device* @get_cpu_device(i32 0)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.clk* @clk_get(%struct.device* %18, i32* null)
  store %struct.clk* %19, %struct.clk** %8, align 8
  %20 = load %struct.clk*, %struct.clk** %8, align 8
  %21 = call i64 @IS_ERR(%struct.clk* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.clk*, %struct.clk** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.clk* %26)
  store i32 %27, i32* %2, align 4
  br label %72

28:                                               ; preds = %17
  %29 = load %struct.clk*, %struct.clk** %8, align 8
  %30 = call i32 @clk_round_rate(%struct.clk* %29, i32 0)
  %31 = load i64, i64* @RASPBERRYPI_FREQ_INTERVAL, align 8
  %32 = call i64 @roundup(i32 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load %struct.clk*, %struct.clk** %8, align 8
  %34 = load i32, i32* @ULONG_MAX, align 4
  %35 = call i32 @clk_round_rate(%struct.clk* %33, i32 %34)
  %36 = load i64, i64* @RASPBERRYPI_FREQ_INTERVAL, align 8
  %37 = call i64 @roundup(i32 %35, i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load %struct.clk*, %struct.clk** %8, align 8
  %39 = call i32 @clk_put(%struct.clk* %38)
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %53, %28
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @dev_pm_opp_add(%struct.device* %46, i64 %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %68

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* @RASPBERRYPI_FREQ_INTERVAL, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %41

57:                                               ; preds = %41
  %58 = call i32 @platform_device_register_simple(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32* null, i32 0)
  store i32 %58, i32* @cpufreq_dt, align 4
  %59 = load i32, i32* @cpufreq_dt, align 4
  %60 = call i32 @PTR_ERR_OR_ZERO(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %72

68:                                               ; preds = %63, %51
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_pm_opp_remove_all_dynamic(%struct.device* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %67, %23, %13
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.clk* @clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i64 @roundup(i32, i64) #1

declare dso_local i32 @clk_round_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @dev_pm_opp_add(%struct.device*, i64, i32) #1

declare dso_local i32 @platform_device_register_simple(i8*, i32, i32*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @dev_pm_opp_remove_all_dynamic(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
