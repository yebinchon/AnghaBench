; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_parse_governor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_parse_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.cpufreq_governor* }
%struct.cpufreq_governor = type { i32 }

@cpufreq_governor_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cpufreq_%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cpufreq_policy*)* @cpufreq_parse_governor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_parse_governor(i8* %0, %struct.cpufreq_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca %struct.cpufreq_governor*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %5, align 8
  %8 = call i32 @mutex_lock(i32* @cpufreq_governor_mutex)
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.cpufreq_governor* @find_governor(i8* %9)
  store %struct.cpufreq_governor* %10, %struct.cpufreq_governor** %6, align 8
  %11 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %12 = icmp ne %struct.cpufreq_governor* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = call i32 @mutex_unlock(i32* @cpufreq_governor_mutex)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @request_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %13
  %23 = call i32 @mutex_lock(i32* @cpufreq_governor_mutex)
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.cpufreq_governor* @find_governor(i8* %24)
  store %struct.cpufreq_governor* %25, %struct.cpufreq_governor** %6, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %28 = icmp ne %struct.cpufreq_governor* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %31 = getelementptr inbounds %struct.cpufreq_governor, %struct.cpufreq_governor* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @try_module_get(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store %struct.cpufreq_governor* null, %struct.cpufreq_governor** %6, align 8
  br label %36

36:                                               ; preds = %35, %29, %26
  %37 = call i32 @mutex_unlock(i32* @cpufreq_governor_mutex)
  %38 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %39 = icmp ne %struct.cpufreq_governor* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %6, align 8
  %42 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %43 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %42, i32 0, i32 0
  store %struct.cpufreq_governor* %41, %struct.cpufreq_governor** %43, align 8
  store i32 0, i32* %3, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %40, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cpufreq_governor* @find_governor(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
