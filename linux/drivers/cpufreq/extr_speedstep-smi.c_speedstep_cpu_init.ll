; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-smi.c_speedstep_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-smi.c_speedstep_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpufreq_policy = type { i64, %struct.TYPE_2__* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fails in acquiring ownership of a SMI interface.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@speedstep_freqs = common dso_local global %struct.TYPE_2__* null, align 8
@SPEEDSTEP_LOW = common dso_local global i64 0, align 8
@SPEEDSTEP_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"could not detect low and high frequencies by SMI call.\0A\00", align 1
@speedstep_processor = common dso_local global i32 0, align 4
@speedstep_set_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"could not detect two different speeds -- aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"workaround worked.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @speedstep_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = call i32 (...) @speedstep_smi_ownership()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @speedstep_freqs, align 8
  %24 = load i64, i64* @SPEEDSTEP_LOW, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* %26, i32** %5, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @speedstep_freqs, align 8
  %28 = load i64, i64* @SPEEDSTEP_HIGH, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @speedstep_smi_get_freqs(i32* %31, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %22
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @speedstep_processor, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @speedstep_get_freqs(i32 %38, i32* %39, i32* %40, i32* null, i32* @speedstep_set_state)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %54

47:                                               ; preds = %36
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @speedstep_freqs, align 8
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %53 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %52, i32 0, i32 1
  store %struct.TYPE_2__* %51, %struct.TYPE_2__** %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %44, %18, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @speedstep_smi_ownership(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @speedstep_smi_get_freqs(i32*, i32*) #1

declare dso_local i32 @speedstep_get_freqs(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
