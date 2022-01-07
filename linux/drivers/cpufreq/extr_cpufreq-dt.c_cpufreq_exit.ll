; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_cpufreq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_cpufreq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32, %struct.private_data* }
%struct.private_data = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cpufreq_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.private_data*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 3
  %6 = load %struct.private_data*, %struct.private_data** %5, align 8
  store %struct.private_data* %6, %struct.private_data** %3, align 8
  %7 = load %struct.private_data*, %struct.private_data** %3, align 8
  %8 = getelementptr inbounds %struct.private_data, %struct.private_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 2
  %12 = call i32 @dev_pm_opp_free_cpufreq_table(i32 %9, i32* %11)
  %13 = load %struct.private_data*, %struct.private_data** %3, align 8
  %14 = getelementptr inbounds %struct.private_data, %struct.private_data* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_pm_opp_of_cpumask_remove_table(i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.private_data*, %struct.private_data** %3, align 8
  %24 = getelementptr inbounds %struct.private_data, %struct.private_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.private_data*, %struct.private_data** %3, align 8
  %29 = getelementptr inbounds %struct.private_data, %struct.private_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_pm_opp_put_regulators(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %34 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_put(i32 %35)
  %37 = load %struct.private_data*, %struct.private_data** %3, align 8
  %38 = call i32 @kfree(%struct.private_data* %37)
  ret i32 0
}

declare dso_local i32 @dev_pm_opp_free_cpufreq_table(i32, i32*) #1

declare dso_local i32 @dev_pm_opp_of_cpumask_remove_table(i32) #1

declare dso_local i32 @dev_pm_opp_put_regulators(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
