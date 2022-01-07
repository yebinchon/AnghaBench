; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_read_cpu_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_read_cpu_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernv_smp_call_data = type { i32, i32 }

@SPRN_PMSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cpu %d pmsr %016lX pstate_id 0x%x frequency %d kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @powernv_read_cpu_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powernv_read_cpu_freq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.powernv_smp_call_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.powernv_smp_call_data*
  store %struct.powernv_smp_call_data* %6, %struct.powernv_smp_call_data** %4, align 8
  %7 = load i32, i32* @SPRN_PMSR, align 4
  %8 = call i64 @get_pmspr(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @extract_local_pstate(i64 %9)
  %11 = load %struct.powernv_smp_call_data*, %struct.powernv_smp_call_data** %4, align 8
  %12 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.powernv_smp_call_data*, %struct.powernv_smp_call_data** %4, align 8
  %14 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pstate_id_to_freq(i32 %15)
  %17 = load %struct.powernv_smp_call_data*, %struct.powernv_smp_call_data** %4, align 8
  %18 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @raw_smp_processor_id()
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.powernv_smp_call_data*, %struct.powernv_smp_call_data** %4, align 8
  %22 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.powernv_smp_call_data*, %struct.powernv_smp_call_data** %4, align 8
  %25 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20, i32 %23, i32 %26)
  ret void
}

declare dso_local i64 @get_pmspr(i32) #1

declare dso_local i32 @extract_local_pstate(i64) #1

declare dso_local i32 @pstate_id_to_freq(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
