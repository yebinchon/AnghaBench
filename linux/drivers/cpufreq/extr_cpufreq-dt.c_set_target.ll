; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.private_data* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.private_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.private_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 3
  %10 = load %struct.private_data*, %struct.private_data** %9, align 8
  store %struct.private_data* %10, %struct.private_data** %5, align 8
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.private_data*, %struct.private_data** %5, align 8
  %20 = getelementptr inbounds %struct.private_data, %struct.private_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = mul i64 %22, 1000
  %24 = call i32 @dev_pm_opp_set_rate(i32 %21, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %29 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %33 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @arch_set_freq_scale(i32 %30, i64 %31, i32 %35)
  br label %37

37:                                               ; preds = %27, %2
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @dev_pm_opp_set_rate(i32, i64) #1

declare dso_local i32 @arch_set_freq_scale(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
