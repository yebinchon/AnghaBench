; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_p4-clockmod.c_cpufreq_p4_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_p4-clockmod.c_cpufreq_p4_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpuinfo_x86 = type { i32, i32 }

@X86_FEATURE_EST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [174 x i8] c"Warning: EST-capable CPU detected. The acpi-cpufreq module offers voltage scaling in addition to frequency scaling. You should use that instead of p4-clockmod, if possible.\0A\00", align 1
@CPUFREQ_CONST_LOOPS = common dso_local global i32 0, align 4
@p4clockmod_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SPEEDSTEP_CPU_PCORE = common dso_local global i64 0, align 8
@SPEEDSTEP_CPU_PM = common dso_local global i64 0, align 8
@SPEEDSTEP_CPU_P4M = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [193 x i8] c"Warning: Pentium 4-M detected. The speedstep-ich or acpi cpufreq modules offer voltage scaling in addition of frequency scaling. You should use either one instead of p4-clockmod, if possible.\0A\00", align 1
@SPEEDSTEP_CPU_P4D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_x86*)* @cpufreq_p4_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_p4_get_frequency(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %3, align 8
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %5 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %10 = load i32, i32* @X86_FEATURE_EST, align 4
  %11 = call i64 @cpu_has(%struct.cpuinfo_x86* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @pr_warn_once(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %32 [
    i32 14, label %19
    i32 15, label %19
    i32 22, label %19
    i32 28, label %19
    i32 13, label %25
    i32 9, label %29
  ]

19:                                               ; preds = %15, %15, %15, %15
  %20 = load i32, i32* @CPUFREQ_CONST_LOOPS, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @p4clockmod_driver, i32 0, i32 0), align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @p4clockmod_driver, i32 0, i32 0), align 4
  %23 = load i64, i64* @SPEEDSTEP_CPU_PCORE, align 8
  %24 = call i32 @speedstep_get_frequency(i64 %23)
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %15
  %26 = load i32, i32* @CPUFREQ_CONST_LOOPS, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @p4clockmod_driver, i32 0, i32 0), align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @p4clockmod_driver, i32 0, i32 0), align 4
  br label %29

29:                                               ; preds = %15, %25
  %30 = load i64, i64* @SPEEDSTEP_CPU_PM, align 8
  %31 = call i32 @speedstep_get_frequency(i64 %30)
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 15
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %53

39:                                               ; preds = %33
  %40 = load i32, i32* @CPUFREQ_CONST_LOOPS, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @p4clockmod_driver, i32 0, i32 0), align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @p4clockmod_driver, i32 0, i32 0), align 4
  %43 = call i64 (...) @speedstep_detect_processor()
  %44 = load i64, i64* @SPEEDSTEP_CPU_P4M, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* @SPEEDSTEP_CPU_P4M, align 8
  %49 = call i32 @speedstep_get_frequency(i64 %48)
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %39
  %51 = load i64, i64* @SPEEDSTEP_CPU_P4D, align 8
  %52 = call i32 @speedstep_get_frequency(i64 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %46, %38, %29, %19
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @speedstep_get_frequency(i64) #1

declare dso_local i64 @speedstep_detect_processor(...) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
