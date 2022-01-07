; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_intel_read_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_intel_read_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pmu_intel_ctxt = type { i32 }
%struct.xen_pmu_cntr_pair = type { i64 }
%struct.xen_pmu_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xen_pmu_intel_ctxt }

@XENPMU_IRQ_PROCESSING = common dso_local global i32 0, align 4
@INTEL_PMC_TYPE_SHIFT = common dso_local global i32 0, align 4
@MSR_CORE_PERF_FIXED_CTR0 = common dso_local global i64 0, align 8
@MSR_IA32_PERFCTR0 = common dso_local global i64 0, align 8
@arch_counters = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @xen_intel_read_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xen_intel_read_pmc(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_pmu_intel_ctxt*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.xen_pmu_cntr_pair*, align 8
  %7 = alloca %struct.xen_pmu_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call %struct.xen_pmu_data* (...) @get_xenpmu_data()
  store %struct.xen_pmu_data* %11, %struct.xen_pmu_data** %7, align 8
  %12 = call i32 (...) @get_xenpmu_flags()
  store i32 %12, i32* %8, align 4
  %13 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %7, align 8
  %14 = icmp ne %struct.xen_pmu_data* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @XENPMU_IRQ_PROCESSING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @INTEL_PMC_TYPE_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i64, i64* @MSR_CORE_PERF_FIXED_CTR0, align 8
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 65535
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %9, align 8
  br label %37

32:                                               ; preds = %20
  %33 = load i64, i64* @MSR_IA32_PERFCTR0, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @native_read_msr_safe(i64 %38, i32* %10)
  store i64 %39, i64* %2, align 8
  br label %72

40:                                               ; preds = %15
  %41 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %7, align 8
  %42 = getelementptr inbounds %struct.xen_pmu_data, %struct.xen_pmu_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.xen_pmu_intel_ctxt* %44, %struct.xen_pmu_intel_ctxt** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @INTEL_PMC_TYPE_SHIFT, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %4, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = call i8* @field_offset(%struct.xen_pmu_intel_ctxt* %51, i64* %52)
  %54 = bitcast i8* %53 to i64*
  store i64* %54, i64** %5, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 65535
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %2, align 8
  br label %72

61:                                               ; preds = %40
  %62 = load %struct.xen_pmu_intel_ctxt*, %struct.xen_pmu_intel_ctxt** %4, align 8
  %63 = load i64*, i64** @arch_counters, align 8
  %64 = call i8* @field_offset(%struct.xen_pmu_intel_ctxt* %62, i64* %63)
  %65 = bitcast i8* %64 to %struct.xen_pmu_cntr_pair*
  store %struct.xen_pmu_cntr_pair* %65, %struct.xen_pmu_cntr_pair** %6, align 8
  %66 = load %struct.xen_pmu_cntr_pair*, %struct.xen_pmu_cntr_pair** %6, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.xen_pmu_cntr_pair, %struct.xen_pmu_cntr_pair* %66, i64 %68
  %70 = getelementptr inbounds %struct.xen_pmu_cntr_pair, %struct.xen_pmu_cntr_pair* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %61, %50, %37
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local %struct.xen_pmu_data* @get_xenpmu_data(...) #1

declare dso_local i32 @get_xenpmu_flags(...) #1

declare dso_local i64 @native_read_msr_safe(i64, i32*) #1

declare dso_local i8* @field_offset(%struct.xen_pmu_intel_ctxt*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
