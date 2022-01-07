; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa2xx-cpufreq.c_pxa_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa2xx-cpufreq.c_pxa_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_frequency_table = type { i32 }
%struct.pxa_freqs = type { i32 }
%struct.pxa_cpufreq_data = type { i32 }

@freq_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Changing CPU frequency from %d Mhz to %d Mhz\0A\00", align 1
@vcc_core = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @pxa_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_set_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_frequency_table*, align 8
  %7 = alloca %struct.pxa_freqs*, align 8
  %8 = alloca %struct.pxa_cpufreq_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call %struct.pxa_cpufreq_data* (...) @cpufreq_get_driver_data()
  store %struct.pxa_cpufreq_data* %11, %struct.pxa_cpufreq_data** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @find_freq_tables(%struct.cpufreq_frequency_table** %6, %struct.pxa_freqs** %7)
  %13 = load %struct.pxa_freqs*, %struct.pxa_freqs** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pxa_freqs, %struct.pxa_freqs* %13, i64 %15
  %17 = getelementptr inbounds %struct.pxa_freqs, %struct.pxa_freqs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* @freq_debug, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %23 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 1000
  %26 = load i32, i32* %9, align 4
  %27 = udiv i32 %26, 1000
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i64, i64* @vcc_core, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.pxa_freqs*, %struct.pxa_freqs** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pxa_freqs, %struct.pxa_freqs* %39, i64 %41
  %43 = call i32 @pxa_cpufreq_change_voltage(%struct.pxa_freqs* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %32, %29
  %50 = load %struct.pxa_cpufreq_data*, %struct.pxa_cpufreq_data** %8, align 8
  %51 = getelementptr inbounds %struct.pxa_cpufreq_data, %struct.pxa_cpufreq_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul i32 %53, 1000
  %55 = call i32 @clk_set_rate(i32 %52, i32 %54)
  %56 = load i64, i64* @vcc_core, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %61 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.pxa_freqs*, %struct.pxa_freqs** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pxa_freqs, %struct.pxa_freqs* %65, i64 %67
  %69 = call i32 @pxa_cpufreq_change_voltage(%struct.pxa_freqs* %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %58, %49
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.pxa_cpufreq_data* @cpufreq_get_driver_data(...) #1

declare dso_local i32 @find_freq_tables(%struct.cpufreq_frequency_table**, %struct.pxa_freqs**) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pxa_cpufreq_change_voltage(%struct.pxa_freqs*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
