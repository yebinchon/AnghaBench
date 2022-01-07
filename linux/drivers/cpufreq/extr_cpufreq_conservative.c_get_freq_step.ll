; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_get_freq_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_get_freq_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_dbs_tuners = type { i32 }
%struct.cpufreq_policy = type { i32 }

@DEF_FREQUENCY_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_dbs_tuners*, %struct.cpufreq_policy*)* @get_freq_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_freq_step(%struct.cs_dbs_tuners* %0, %struct.cpufreq_policy* %1) #0 {
  %3 = alloca %struct.cs_dbs_tuners*, align 8
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  store %struct.cs_dbs_tuners* %0, %struct.cs_dbs_tuners** %3, align 8
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %4, align 8
  %6 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %3, align 8
  %7 = getelementptr inbounds %struct.cs_dbs_tuners, %struct.cs_dbs_tuners* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = sdiv i32 %12, 100
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @DEF_FREQUENCY_STEP, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
