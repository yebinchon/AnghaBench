; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_dt_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_dt_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.platform_device = type { i32 }
%struct.cpufreq_dt_platform_data = type { i64, i32, i64 }

@CPUFREQ_HAVE_GOVERNOR_PER_POLICY = common dso_local global i32 0, align 4
@dt_cpufreq_driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed register driver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dt_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cpufreq_dt_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.cpufreq_dt_platform_data* @dev_get_platdata(i32* %7)
  store %struct.cpufreq_dt_platform_data* %8, %struct.cpufreq_dt_platform_data** %4, align 8
  %9 = call i32 (...) @resources_available()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.cpufreq_dt_platform_data*, %struct.cpufreq_dt_platform_data** %4, align 8
  %16 = icmp ne %struct.cpufreq_dt_platform_data* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %struct.cpufreq_dt_platform_data*, %struct.cpufreq_dt_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.cpufreq_dt_platform_data, %struct.cpufreq_dt_platform_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @CPUFREQ_HAVE_GOVERNOR_PER_POLICY, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dt_cpufreq_driver, i32 0, i32 2), align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dt_cpufreq_driver, i32 0, i32 2), align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.cpufreq_dt_platform_data*, %struct.cpufreq_dt_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.cpufreq_dt_platform_data, %struct.cpufreq_dt_platform_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dt_cpufreq_driver, i32 0, i32 1), align 8
  %30 = load %struct.cpufreq_dt_platform_data*, %struct.cpufreq_dt_platform_data** %4, align 8
  %31 = getelementptr inbounds %struct.cpufreq_dt_platform_data, %struct.cpufreq_dt_platform_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.cpufreq_dt_platform_data*, %struct.cpufreq_dt_platform_data** %4, align 8
  %36 = getelementptr inbounds %struct.cpufreq_dt_platform_data, %struct.cpufreq_dt_platform_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dt_cpufreq_driver, i32 0, i32 0), align 8
  br label %38

38:                                               ; preds = %34, %26
  br label %39

39:                                               ; preds = %38, %14
  %40 = call i32 @cpufreq_register_driver(%struct.TYPE_3__* @dt_cpufreq_driver)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.cpufreq_dt_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @resources_available(...) #1

declare dso_local i32 @cpufreq_register_driver(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
