; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc_msr.c_cpu_khz_from_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc_msr.c_cpu_khz_from_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_desc = type { i32*, i64 }
%struct.x86_cpu_id = type { i64 }

@tsc_msr_cpu_ids = common dso_local global i32 0, align 4
@MSR_PLATFORM_INFO = common dso_local global i32 0, align 4
@MSR_IA32_PERF_STATUS = common dso_local global i32 0, align 4
@MSR_FSB_FREQ = common dso_local global i32 0, align 4
@X86_FEATURE_TSC_KNOWN_FREQ = common dso_local global i32 0, align 4
@X86_FEATURE_TSC_RELIABLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@lapic_timer_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cpu_khz_from_msr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.freq_desc*, align 8
  %7 = alloca %struct.x86_cpu_id*, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @tsc_msr_cpu_ids, align 4
  %10 = call %struct.x86_cpu_id* @x86_match_cpu(i32 %9)
  store %struct.x86_cpu_id* %10, %struct.x86_cpu_id** %7, align 8
  %11 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %7, align 8
  %12 = icmp ne %struct.x86_cpu_id* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %61

14:                                               ; preds = %0
  %15 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %7, align 8
  %16 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.freq_desc*
  store %struct.freq_desc* %18, %struct.freq_desc** %6, align 8
  %19 = load %struct.freq_desc*, %struct.freq_desc** %6, align 8
  %20 = getelementptr inbounds %struct.freq_desc, %struct.freq_desc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i32, i32* @MSR_PLATFORM_INFO, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @rdmsr(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %14
  %32 = load i32, i32* @MSR_IA32_PERF_STATUS, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @rdmsr(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 31
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* @MSR_FSB_FREQ, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @rdmsr(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.freq_desc*, %struct.freq_desc** %6, align 8
  %45 = getelementptr inbounds %struct.freq_desc, %struct.freq_desc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = and i32 %47, 7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %8, align 8
  %56 = load i32, i32* @X86_FEATURE_TSC_KNOWN_FREQ, align 4
  %57 = call i32 @setup_force_cpu_cap(i32 %56)
  %58 = load i32, i32* @X86_FEATURE_TSC_RELIABLE, align 4
  %59 = call i32 @setup_force_cpu_cap(i32 %58)
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %1, align 8
  br label %61

61:                                               ; preds = %39, %13
  %62 = load i64, i64* %1, align 8
  ret i64 %62
}

declare dso_local %struct.x86_cpu_id* @x86_match_cpu(i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @setup_force_cpu_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
