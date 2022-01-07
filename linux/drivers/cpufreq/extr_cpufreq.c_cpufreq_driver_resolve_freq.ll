; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_driver_resolve_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_driver_resolve_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cpufreq_policy*, i32)*, i64 }
%struct.cpufreq_policy = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@cpufreq_driver = common dso_local global %struct.TYPE_4__* null, align 8
@CPUFREQ_RELATION_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_driver_resolve_freq(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clamp_val(i32 %7, i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpufreq_driver, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  %26 = call i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %29 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %31 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpufreq_driver, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.cpufreq_policy*, i32)*, i32 (%struct.cpufreq_policy*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.cpufreq_policy*, i32)* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpufreq_driver, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.cpufreq_policy*, i32)*, i32 (%struct.cpufreq_policy*, i32)** %45, align 8
  %47 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 %46(%struct.cpufreq_policy* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %43, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
