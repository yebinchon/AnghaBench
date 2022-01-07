; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_od_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_od_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cpufreq_policy*, i32, i32)* }
%struct.cpufreq_policy = type { i64, i64, %struct.TYPE_3__, %struct.policy_dbs_info* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.policy_dbs_info = type { i32, %struct.dbs_data* }
%struct.dbs_data = type { i32, i32, %struct.od_dbs_tuners* }
%struct.od_dbs_tuners = type { i64 }
%struct.od_policy_dbs_info = type { i64 }

@od_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CPUFREQ_RELATION_L = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @od_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @od_update(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.policy_dbs_info*, align 8
  %4 = alloca %struct.od_policy_dbs_info*, align 8
  %5 = alloca %struct.dbs_data*, align 8
  %6 = alloca %struct.od_dbs_tuners*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 3
  %13 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %12, align 8
  store %struct.policy_dbs_info* %13, %struct.policy_dbs_info** %3, align 8
  %14 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %15 = call %struct.od_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info* %14)
  store %struct.od_policy_dbs_info* %15, %struct.od_policy_dbs_info** %4, align 8
  %16 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %17 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %16, i32 0, i32 1
  %18 = load %struct.dbs_data*, %struct.dbs_data** %17, align 8
  store %struct.dbs_data* %18, %struct.dbs_data** %5, align 8
  %19 = load %struct.dbs_data*, %struct.dbs_data** %5, align 8
  %20 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %19, i32 0, i32 2
  %21 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %20, align 8
  store %struct.od_dbs_tuners* %21, %struct.od_dbs_tuners** %6, align 8
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %23 = call i32 @dbs_update(%struct.cpufreq_policy* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %4, align 8
  %25 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dbs_data*, %struct.dbs_data** %5, align 8
  %28 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %1
  %32 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %33 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.dbs_data*, %struct.dbs_data** %5, align 8
  %41 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %44 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %47 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %48 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dbs_freq_increase(%struct.cpufreq_policy* %46, i64 %49)
  br label %85

51:                                               ; preds = %1
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %53 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  %56 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %57 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub i32 %62, %63
  %65 = mul i32 %61, %64
  %66 = udiv i32 %65, 100
  %67 = add i32 %60, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %69 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %6, align 8
  %71 = getelementptr inbounds %struct.od_dbs_tuners, %struct.od_dbs_tuners* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %51
  %75 = load i32 (%struct.cpufreq_policy*, i32, i32)*, i32 (%struct.cpufreq_policy*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @od_ops, i32 0, i32 0), align 8
  %76 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  %79 = call i32 %75(%struct.cpufreq_policy* %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %74, %51
  %81 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @CPUFREQ_RELATION_C, align 4
  %84 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %45
  ret void
}

declare dso_local %struct.od_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info*) #1

declare dso_local i32 @dbs_update(%struct.cpufreq_policy*) #1

declare dso_local i32 @dbs_freq_increase(%struct.cpufreq_policy*, i64) #1

declare dso_local i32 @__cpufreq_driver_target(%struct.cpufreq_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
