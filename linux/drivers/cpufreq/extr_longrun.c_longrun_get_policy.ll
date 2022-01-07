; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longrun.c_longrun_get_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longrun.c_longrun_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, i64, i64, i32 }

@MSR_TMTA_LONGRUN_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"longrun flags are %x - %x\0A\00", align 1
@CPUFREQ_POLICY_PERFORMANCE = common dso_local global i32 0, align 4
@CPUFREQ_POLICY_POWERSAVE = common dso_local global i32 0, align 4
@MSR_TMTA_LONGRUN_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"longrun ctrl is %x - %x\0A\00", align 1
@longrun_high_freq = common dso_local global i64 0, align 8
@longrun_low_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @longrun_get_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @longrun_get_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %5 = load i32, i32* @MSR_TMTA_LONGRUN_FLAGS, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @rdmsr(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @CPUFREQ_POLICY_PERFORMANCE, align 4
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @CPUFREQ_POLICY_POWERSAVE, align 4
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @MSR_TMTA_LONGRUN_CTRL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rdmsr(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 127
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 127
  store i32 %34, i32* %4, align 4
  %35 = load i64, i64* @longrun_high_freq, align 8
  %36 = load i64, i64* @longrun_low_freq, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load i64, i64* @longrun_high_freq, align 8
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %43 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %42, i32 0, i32 2
  store i64 %39, i64* %43, align 8
  br label %67

44:                                               ; preds = %23
  %45 = load i64, i64* @longrun_low_freq, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @longrun_high_freq, align 8
  %49 = load i64, i64* @longrun_low_freq, align 8
  %50 = sub nsw i64 %48, %49
  %51 = sdiv i64 %50, 100
  %52 = mul nsw i64 %47, %51
  %53 = add nsw i64 %45, %52
  %54 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %55 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* @longrun_low_freq, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @longrun_high_freq, align 8
  %60 = load i64, i64* @longrun_low_freq, align 8
  %61 = sub nsw i64 %59, %60
  %62 = sdiv i64 %61, 100
  %63 = mul nsw i64 %58, %62
  %64 = add nsw i64 %56, %63
  %65 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %66 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %44, %38
  %68 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %69 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
