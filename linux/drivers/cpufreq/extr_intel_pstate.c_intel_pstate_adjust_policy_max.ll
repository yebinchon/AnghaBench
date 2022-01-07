; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_adjust_policy_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_adjust_policy_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cpudata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }

@hwp_active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"policy->max > max non turbo frequency\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*, %struct.cpudata*)* @intel_pstate_adjust_policy_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_adjust_policy_max(%struct.cpufreq_policy* %0, %struct.cpudata* %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.cpudata*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store %struct.cpudata* %1, %struct.cpudata** %4, align 8
  %5 = load i32, i32* @hwp_active, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %9 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %13 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %11, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %7
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %28 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %31 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %29, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %38 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %42 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %26, %17, %7, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
