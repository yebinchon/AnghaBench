; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_dbs_freq_increase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_dbs_freq_increase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpufreq_policy*, i32, i32)* }
%struct.cpufreq_policy = type { i64, i64, %struct.policy_dbs_info* }
%struct.policy_dbs_info = type { %struct.dbs_data* }
%struct.dbs_data = type { %struct.od_dbs_tuners* }
%struct.od_dbs_tuners = type { i64 }

@od_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CPUFREQ_RELATION_H = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*, i32)* @dbs_freq_increase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbs_freq_increase(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.policy_dbs_info*, align 8
  %6 = alloca %struct.dbs_data*, align 8
  %7 = alloca %struct.od_dbs_tuners*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 2
  %10 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %9, align 8
  store %struct.policy_dbs_info* %10, %struct.policy_dbs_info** %5, align 8
  %11 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %5, align 8
  %12 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %11, i32 0, i32 0
  %13 = load %struct.dbs_data*, %struct.dbs_data** %12, align 8
  store %struct.dbs_data* %13, %struct.dbs_data** %6, align 8
  %14 = load %struct.dbs_data*, %struct.dbs_data** %6, align 8
  %15 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %14, i32 0, i32 0
  %16 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %15, align 8
  store %struct.od_dbs_tuners* %16, %struct.od_dbs_tuners** %7, align 8
  %17 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %7, align 8
  %18 = getelementptr inbounds %struct.od_dbs_tuners, %struct.od_dbs_tuners* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32 (%struct.cpufreq_policy*, i32, i32)*, i32 (%struct.cpufreq_policy*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @od_ops, i32 0, i32 0), align 8
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CPUFREQ_RELATION_H, align 4
  %26 = call i32 %22(%struct.cpufreq_policy* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %29 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %7, align 8
  %41 = getelementptr inbounds %struct.od_dbs_tuners, %struct.od_dbs_tuners* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @CPUFREQ_RELATION_H, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %38, i32 %39, i32 %49)
  br label %51

51:                                               ; preds = %48, %35
  ret void
}

declare dso_local i32 @__cpufreq_driver_target(%struct.cpufreq_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
