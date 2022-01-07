; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_od_dbs_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_od_dbs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.policy_dbs_info* }
%struct.policy_dbs_info = type { i64, i32, %struct.dbs_data* }
%struct.dbs_data = type { i32 }
%struct.od_policy_dbs_info = type { i32, i32, i32, i64 }

@OD_NORMAL_SAMPLE = common dso_local global i32 0, align 4
@OD_SUB_SAMPLE = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @od_dbs_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @od_dbs_update(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.policy_dbs_info*, align 8
  %5 = alloca %struct.dbs_data*, align 8
  %6 = alloca %struct.od_policy_dbs_info*, align 8
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 0
  %10 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %9, align 8
  store %struct.policy_dbs_info* %10, %struct.policy_dbs_info** %4, align 8
  %11 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %4, align 8
  %12 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %11, i32 0, i32 2
  %13 = load %struct.dbs_data*, %struct.dbs_data** %12, align 8
  store %struct.dbs_data* %13, %struct.dbs_data** %5, align 8
  %14 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %4, align 8
  %15 = call %struct.od_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info* %14)
  store %struct.od_policy_dbs_info* %15, %struct.od_policy_dbs_info** %6, align 8
  %16 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %6, align 8
  %17 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @OD_NORMAL_SAMPLE, align 4
  %20 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %6, align 8
  %21 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @OD_SUB_SAMPLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %4, align 8
  %27 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %32 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %6, align 8
  %33 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @CPUFREQ_RELATION_H, align 4
  %36 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %31, i64 %34, i32 %35)
  %37 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %6, align 8
  %38 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %25, %1
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %42 = call i32 @od_update(%struct.cpufreq_policy* %41)
  %43 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %6, align 8
  %44 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* @OD_SUB_SAMPLE, align 4
  %49 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %6, align 8
  %50 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %6, align 8
  %52 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %2, align 4
  br label %62

54:                                               ; preds = %40
  %55 = load %struct.dbs_data*, %struct.dbs_data** %5, align 8
  %56 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %4, align 8
  %59 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = mul i32 %57, %60
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %54, %47, %30
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.od_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info*) #1

declare dso_local i32 @__cpufreq_driver_target(%struct.cpufreq_policy*, i64, i32) #1

declare dso_local i32 @od_update(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
