; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_userspace.c_cpufreq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_userspace.c_cpufreq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cpufreq_set for cpu %u, freq %u kHz\0A\00", align 1
@userspace_mutex = common dso_local global i32 0, align 4
@cpu_is_managed = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @cpufreq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_set(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = call i32 @mutex_lock(i32* @userspace_mutex)
  %18 = load i32, i32* @cpu_is_managed, align 4
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @per_cpu(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  %31 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %24
  %33 = call i32 @mutex_unlock(i32* @userspace_mutex)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @per_cpu(i32, i32) #1

declare dso_local i32 @__cpufreq_driver_target(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
