; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_verify_current_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_verify_current_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.cpufreq_policy = type { i32, i32, i64, i32 }

@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @cpufreq_verify_current_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_verify_current_freq(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %9(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = call i32 (...) @has_target()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %22
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %29 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @cpufreq_out_of_sync(%struct.cpufreq_policy* %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 1
  %42 = call i32 @schedule_work(i32* %41)
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %25, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @has_target(...) #1

declare dso_local i32 @cpufreq_out_of_sync(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
