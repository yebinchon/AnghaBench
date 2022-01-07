; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_mediatek-cpufreq.c_mtk_cpufreq_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_mediatek-cpufreq.c_mtk_cpufreq_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cpu_dvfs_info = type { i32, i64 }

@VOLT_TOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cpu_dvfs_info*, i32)* @mtk_cpufreq_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cpufreq_set_voltage(%struct.mtk_cpu_dvfs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cpu_dvfs_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_cpu_dvfs_info* %0, %struct.mtk_cpu_dvfs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %7 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @mtk_cpufreq_voltage_tracking(%struct.mtk_cpu_dvfs_info* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @VOLT_TOL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @regulator_set_voltage(i32 %17, i32 %18, i64 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @mtk_cpufreq_voltage_tracking(%struct.mtk_cpu_dvfs_info*, i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
