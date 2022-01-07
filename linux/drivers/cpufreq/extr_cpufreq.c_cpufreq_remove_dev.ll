; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_remove_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpufreq_policy*)*, i64 }
%struct.cpufreq_policy = type { i32 }
%struct.device = type { i32 }
%struct.subsys_interface = type { i32 }

@cpufreq_cpu_data = common dso_local global i32 0, align 4
@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.subsys_interface*)* @cpufreq_remove_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_remove_dev(%struct.device* %0, %struct.subsys_interface* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.subsys_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_policy*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.subsys_interface* %1, %struct.subsys_interface** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @cpufreq_cpu_data, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.cpufreq_policy* @per_cpu(i32 %10, i32 %11)
  store %struct.cpufreq_policy* %12, %struct.cpufreq_policy** %6, align 8
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %14 = icmp ne %struct.cpufreq_policy* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @cpu_online(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @cpufreq_offline(i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %26 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpumask_clear_cpu(i32 %24, i32 %27)
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @remove_cpu_dev_symlink(%struct.cpufreq_policy* %29, %struct.device* %30)
  %32 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %33 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @cpumask_empty(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %23
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.cpufreq_policy*)*, i32 (%struct.cpufreq_policy*)** %44, align 8
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %47 = call i32 %45(%struct.cpufreq_policy* %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %50 = call i32 @cpufreq_policy_free(%struct.cpufreq_policy* %49)
  br label %51

51:                                               ; preds = %15, %48, %23
  ret void
}

declare dso_local %struct.cpufreq_policy* @per_cpu(i32, i32) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @cpufreq_offline(i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @remove_cpu_dev_symlink(%struct.cpufreq_policy*, %struct.device*) #1

declare dso_local i64 @cpumask_empty(i32) #1

declare dso_local i32 @cpufreq_policy_free(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
