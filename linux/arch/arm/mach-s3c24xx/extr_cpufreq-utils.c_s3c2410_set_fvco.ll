; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_cpufreq-utils.c_s3c2410_set_fvco.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_cpufreq-utils.c_s3c2410_set_fvco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c2410_set_fvco(%struct.s3c_cpufreq_config* %0) #0 {
  %2 = alloca %struct.s3c_cpufreq_config*, align 8
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %2, align 8
  %3 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %4 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IS_ERR(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %10 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %13 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_set_rate(i32 %11, i32 %15)
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
