; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_khz_to_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_khz_to_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_cpudata = type { %struct.cppc_perf_caps }
%struct.cppc_perf_caps = type { i32, i32, i32, i32, i32 }

@cppc_cpufreq_khz_to_perf.max_khz = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cppc_cpudata*, i32)* @cppc_cpufreq_khz_to_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppc_cpufreq_khz_to_perf(%struct.cppc_cpudata* %0, i32 %1) #0 {
  %3 = alloca %struct.cppc_cpudata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cppc_perf_caps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cppc_cpudata* %0, %struct.cppc_cpudata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %3, align 8
  %9 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %8, i32 0, i32 0
  store %struct.cppc_perf_caps* %9, %struct.cppc_perf_caps** %5, align 8
  %10 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %11 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %16 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %22 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %27 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %30 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %34 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %37 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %51

40:                                               ; preds = %14, %2
  %41 = load i32, i32* @cppc_cpufreq_khz_to_perf.max_khz, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 (...) @cppc_get_dmi_max_khz()
  store i32 %44, i32* @cppc_cpufreq_khz_to_perf.max_khz, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %3, align 8
  %47 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @cppc_cpufreq_khz_to_perf.max_khz, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = udiv i32 %54, %55
  ret i32 %56
}

declare dso_local i32 @cppc_get_dmi_max_khz(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
