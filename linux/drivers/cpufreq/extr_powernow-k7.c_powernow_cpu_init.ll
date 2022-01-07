; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_powernow_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_powernow_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.msr_fidvidstatus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MSR_K7_FID_VID_STATUS = common dso_local global i32 0, align 4
@cpu_khz = common dso_local global i32 0, align 4
@fid_codes = common dso_local global i32* null, align 8
@fsb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can not determine bus frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"FSB: %3dMHz\0A\00", align 1
@powernow_dmi_table = common dso_local global i32 0, align 4
@acpi_force = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"PSB/PST known to be broken - trying ACPI instead\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Trying ACPI perflib\0A\00", align 1
@maximum_speed = common dso_local global i32 0, align 4
@minimum_speed = common dso_local global i32 0, align 4
@latency = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"ACPI and legacy methods failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"SGTC: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Minimum speed %d MHz - Maximum speed %d MHz\0A\00", align 1
@powernow_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @powernow_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernow_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %union.msr_fidvidstatus, align 8
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %90

13:                                               ; preds = %1
  %14 = load i32, i32* @MSR_K7_FID_VID_STATUS, align 4
  %15 = bitcast %union.msr_fidvidstatus* %4 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rdmsrl(i32 %14, i32 %16)
  %18 = call i32 (...) @recalibrate_cpu_khz()
  %19 = load i32, i32* @cpu_khz, align 4
  %20 = mul nsw i32 10, %19
  %21 = load i32*, i32** @fid_codes, align 8
  %22 = bitcast %union.msr_fidvidstatus* %4 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %20, %26
  store i32 %27, i32* @fsb, align 4
  %28 = load i32, i32* @fsb, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %13
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %13
  %35 = load i32, i32* @fsb, align 4
  %36 = sdiv i32 %35, 1000
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @powernow_dmi_table, align 4
  %39 = call i64 @dmi_check_system(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* @acpi_force, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %34
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (...) @powernow_acpi_init()
  store i32 %46, i32* %5, align 4
  br label %70

47:                                               ; preds = %41
  %48 = bitcast %union.msr_fidvidstatus* %4 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %union.msr_fidvidstatus* %4 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @powernow_decode_bios(i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* @maximum_speed, align 4
  store i32 -1, i32* @minimum_speed, align 4
  store i64 0, i64* @latency, align 8
  %59 = call i32 (...) @powernow_acpi_init()
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  br label %69

65:                                               ; preds = %47
  %66 = call i64 (...) @fixup_sgtc()
  store i64 %66, i64* @latency, align 8
  %67 = load i64, i64* @latency, align 8
  %68 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %65, %64
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %90

75:                                               ; preds = %70
  %76 = load i32, i32* @minimum_speed, align 4
  %77 = sdiv i32 %76, 1000
  %78 = load i32, i32* @maximum_speed, align 4
  %79 = sdiv i32 %78, 1000
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %77, i32 %79)
  %81 = load i32, i32* @fsb, align 4
  %82 = load i64, i64* @latency, align 8
  %83 = call i32 @cpufreq_scale(i64 2000000, i32 %81, i64 %82)
  %84 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %85 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @powernow_table, align 4
  %88 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %89 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %75, %73, %30, %10
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @recalibrate_cpu_khz(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @powernow_acpi_init(...) #1

declare dso_local i32 @powernow_decode_bios(i32, i32) #1

declare dso_local i64 @fixup_sgtc(...) #1

declare dso_local i32 @cpufreq_scale(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
