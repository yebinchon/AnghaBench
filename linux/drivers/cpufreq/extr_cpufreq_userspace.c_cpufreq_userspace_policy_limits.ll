; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_userspace.c_cpufreq_userspace_policy_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_userspace.c_cpufreq_userspace_policy_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32*, i32, i32, i32, i32 }

@userspace_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"limit event for cpu %u: %u - %u kHz, currently %u kHz, last set to %u kHz\0A\00", align 1
@CPUFREQ_RELATION_H = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @cpufreq_userspace_policy_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_userspace_policy_limits(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = call i32 @mutex_lock(i32* @userspace_mutex)
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %21)
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CPUFREQ_RELATION_H, align 4
  %35 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %30, i32 %33, i32 %34)
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %38 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  %49 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %44, i32 %47, i32 %48)
  br label %56

50:                                               ; preds = %36
  %51 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  %55 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %51, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56, %29
  %58 = call i32 @mutex_unlock(i32* @userspace_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__cpufreq_driver_target(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
