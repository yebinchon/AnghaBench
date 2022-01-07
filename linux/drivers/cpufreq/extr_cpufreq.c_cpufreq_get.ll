; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_policy = type { i32 }

@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %5)
  store %struct.cpufreq_policy* %6, %struct.cpufreq_policy** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = icmp ne %struct.cpufreq_policy* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %19 = call i32 @__cpufreq_get(%struct.cpufreq_policy* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %9
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 0
  %23 = call i32 @up_read(i32* %22)
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %25 = call i32 @cpufreq_cpu_put(%struct.cpufreq_policy* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__cpufreq_get(%struct.cpufreq_policy*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @cpufreq_cpu_put(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
