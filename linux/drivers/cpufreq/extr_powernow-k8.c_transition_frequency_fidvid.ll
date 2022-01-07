; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_transition_frequency_fidvid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_transition_frequency_fidvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i8*, i8* }

@.str = private unnamed_addr constant [31 x i8] c"cpu %d transition to index %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"table matched fid 0x%x, giving vid 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"target matches current values (fid 0x%x, vid 0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"cpu %d, changing to fid 0x%x, vid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i32)* @transition_frequency_fidvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transition_frequency_fidvid(%struct.powernow_k8_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powernow_k8_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpufreq_freqs, align 8
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @smp_processor_id()
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %15 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %24 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 65280
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %37 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

40:                                               ; preds = %2
  %41 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %42 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %48 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %83

56:                                               ; preds = %46, %40
  %57 = call i32 (...) @smp_processor_id()
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  %61 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %62 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @find_khz_freq_from_fid(i32 %63)
  %65 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @find_khz_freq_from_fid(i32 %66)
  %68 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = call i32 (...) @smp_processor_id()
  %70 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %69)
  store %struct.cpufreq_policy* %70, %struct.cpufreq_policy** %6, align 8
  %71 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %72 = call i32 @cpufreq_cpu_put(%struct.cpufreq_policy* %71)
  %73 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %74 = call i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %73, %struct.cpufreq_freqs* %10)
  %75 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @transition_fid_vid(%struct.powernow_k8_data* %75, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy* %79, %struct.cpufreq_freqs* %10, i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %56, %52, %39
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

declare dso_local i8* @find_khz_freq_from_fid(i32) #1

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i32 @cpufreq_cpu_put(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy*, %struct.cpufreq_freqs*) #1

declare dso_local i32 @transition_fid_vid(%struct.powernow_k8_data*, i32, i32) #1

declare dso_local i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
