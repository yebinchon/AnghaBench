; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_set_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_set_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernv_smp_call_data = type { i64, i64 }

@SPRN_PMCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Setting cpu %d pmcr to %016lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pstate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.powernv_smp_call_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.powernv_smp_call_data*
  store %struct.powernv_smp_call_data* %8, %struct.powernv_smp_call_data** %4, align 8
  %9 = load %struct.powernv_smp_call_data*, %struct.powernv_smp_call_data** %4, align 8
  %10 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.powernv_smp_call_data*, %struct.powernv_smp_call_data** %4, align 8
  %13 = getelementptr inbounds %struct.powernv_smp_call_data, %struct.powernv_smp_call_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @SPRN_PMCR, align 4
  %16 = call i64 @get_pmspr(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, 281474976710655
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, 255
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, 255
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %6, align 8
  %25 = shl i64 %24, 56
  %26 = or i64 %23, %25
  %27 = load i64, i64* %5, align 8
  %28 = shl i64 %27, 48
  %29 = or i64 %26, %28
  store i64 %29, i64* %3, align 8
  %30 = call i32 (...) @raw_smp_processor_id()
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31)
  %33 = load i32, i32* @SPRN_PMCR, align 4
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @set_pmspr(i32 %33, i64 %34)
  ret void
}

declare dso_local i64 @get_pmspr(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @set_pmspr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
