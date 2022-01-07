; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c_pxa3xx_cpufreq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c_pxa3xx_cpufreq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_freq_info = type { i32 }
%struct.cpufreq_policy = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@pxa3xx_freqs = common dso_local global %struct.pxa3xx_freq_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @pxa3xx_cpufreq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_cpufreq_set(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa3xx_freq_info*, align 8
  %7 = alloca i64, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** @pxa3xx_freqs, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %16, i64 %18
  store %struct.pxa3xx_freq_info* %19, %struct.pxa3xx_freq_info** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %6, align 8
  %23 = call i32 @__update_core_freq(%struct.pxa3xx_freq_info* %22)
  %24 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %6, align 8
  %25 = call i32 @__update_bus_freq(%struct.pxa3xx_freq_info* %24)
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__update_core_freq(%struct.pxa3xx_freq_info*) #1

declare dso_local i32 @__update_bus_freq(%struct.pxa3xx_freq_info*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
