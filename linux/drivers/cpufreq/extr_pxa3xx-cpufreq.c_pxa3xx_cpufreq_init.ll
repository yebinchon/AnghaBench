; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c_pxa3xx_cpufreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c_pxa3xx_cpufreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pxa300_freqs = common dso_local global i32 0, align 4
@pxa320_freqs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to setup frequency table\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"CPUFREQ support for PXA3xx initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @pxa3xx_cpufreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_cpufreq_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 104000, i32* %9, align 4
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 0
  store i32 104000, i32* %11, align 4
  %12 = call i64 (...) @cpu_is_pxa320()
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 806000, i32 624000
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 1
  store i32 %15, i32* %20, align 4
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 1000, i32* %23, align 4
  %24 = call i64 (...) @cpu_is_pxa300()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = call i64 (...) @cpu_is_pxa310()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %1
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %31 = load i32, i32* @pxa300_freqs, align 4
  %32 = load i32, i32* @pxa300_freqs, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @setup_freqs_table(%struct.cpufreq_policy* %30, i32 %31, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = call i64 (...) @cpu_is_pxa320()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %40 = load i32, i32* @pxa320_freqs, align 4
  %41 = load i32, i32* @pxa320_freqs, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @setup_freqs_table(%struct.cpufreq_policy* %39, i32 %40, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %44
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @cpu_is_pxa320(...) #1

declare dso_local i64 @cpu_is_pxa300(...) #1

declare dso_local i64 @cpu_is_pxa310(...) #1

declare dso_local i32 @setup_freqs_table(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
