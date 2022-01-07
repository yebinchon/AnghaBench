; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_powernowk8_target_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_powernowk8_target_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernowk8_target_arg = type { i32, %struct.cpufreq_policy* }
%struct.cpufreq_policy = type { i32, i32, i32, i32 }
%struct.powernow_k8_data = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@powernow_data = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"failing targ, change pending bit set\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"targ: cpu %d, %d kHz, min %d, max %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"targ: curr fid 0x%x, vid 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"error - out of sync, fix 0x%x 0x%x, vid 0x%x 0x%x\0A\00", align 1
@fidvid_mutex = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"transition frequency failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @powernowk8_target_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @powernowk8_target_fn(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.powernowk8_target_arg*, align 8
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.powernow_k8_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.powernowk8_target_arg*
  store %struct.powernowk8_target_arg* %12, %struct.powernowk8_target_arg** %4, align 8
  %13 = load %struct.powernowk8_target_arg*, %struct.powernowk8_target_arg** %4, align 8
  %14 = getelementptr inbounds %struct.powernowk8_target_arg, %struct.powernowk8_target_arg* %13, i32 0, i32 1
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %14, align 8
  store %struct.cpufreq_policy* %15, %struct.cpufreq_policy** %5, align 8
  %16 = load %struct.powernowk8_target_arg*, %struct.powernowk8_target_arg** %4, align 8
  %17 = getelementptr inbounds %struct.powernowk8_target_arg, %struct.powernowk8_target_arg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @powernow_data, align 4
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.powernow_k8_data* @per_cpu(i32 %19, i32 %22)
  store %struct.powernow_k8_data* %23, %struct.powernow_k8_data** %7, align 8
  %24 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %25 = icmp ne %struct.powernow_k8_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %2, align 8
  br label %119

29:                                               ; preds = %1
  %30 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %31 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %34 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = call i64 (...) @pending_bit_stuck()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @EIO, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %2, align 8
  br label %119

42:                                               ; preds = %29
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %44 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %48 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %57 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %60 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %55, i32 %58, i32 %61)
  %63 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %64 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %42
  %67 = load i64, i64* @EIO, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %2, align 8
  br label %119

69:                                               ; preds = %42
  %70 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %71 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %74 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %72, i64 %75)
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %79 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %69
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %85 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82, %69
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %91 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %95 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %89, i64 %92, i64 %93, i64 %96)
  br label %98

98:                                               ; preds = %88, %82
  %99 = call i32 @mutex_lock(i32* @fidvid_mutex)
  %100 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @powernow_k8_acpi_pst_values(%struct.powernow_k8_data* %100, i32 %101)
  %103 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @transition_frequency_fidvid(%struct.powernow_k8_data* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @mutex_unlock(i32* @fidvid_mutex)
  store i64 1, i64* %2, align 8
  br label %119

111:                                              ; preds = %98
  %112 = call i32 @mutex_unlock(i32* @fidvid_mutex)
  %113 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %7, align 8
  %114 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @find_khz_freq_from_fid(i64 %115)
  %117 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %118 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  store i64 0, i64* %2, align 8
  br label %119

119:                                              ; preds = %111, %108, %66, %38, %26
  %120 = load i64, i64* %2, align 8
  ret i64 %120
}

declare dso_local %struct.powernow_k8_data* @per_cpu(i32, i32) #1

declare dso_local i64 @pending_bit_stuck(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

declare dso_local i32 @pr_info(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @powernow_k8_acpi_pst_values(%struct.powernow_k8_data*, i32) #1

declare dso_local i32 @transition_frequency_fidvid(%struct.powernow_k8_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @find_khz_freq_from_fid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
