; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_amd_read_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_amd_read_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pmu_amd_ctxt = type { i32 }
%struct.xen_pmu_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xen_pmu_amd_ctxt }

@XENPMU_IRQ_PROCESSING = common dso_local global i32 0, align 4
@amd_counters_base = common dso_local global i64 0, align 8
@amd_msr_step = common dso_local global i32 0, align 4
@counters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @xen_amd_read_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xen_amd_read_pmc(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_pmu_amd_ctxt*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.xen_pmu_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = call %struct.xen_pmu_data* (...) @get_xenpmu_data()
  store %struct.xen_pmu_data* %10, %struct.xen_pmu_data** %6, align 8
  %11 = call i32 (...) @get_xenpmu_flags()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %6, align 8
  %13 = icmp ne %struct.xen_pmu_data* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @XENPMU_IRQ_PROCESSING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14, %1
  %20 = load i64, i64* @amd_counters_base, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @amd_msr_step, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @native_read_msr_safe(i64 %26, i32* %9)
  store i64 %27, i64* %2, align 8
  br label %41

28:                                               ; preds = %14
  %29 = load %struct.xen_pmu_data*, %struct.xen_pmu_data** %6, align 8
  %30 = getelementptr inbounds %struct.xen_pmu_data, %struct.xen_pmu_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.xen_pmu_amd_ctxt* %32, %struct.xen_pmu_amd_ctxt** %4, align 8
  %33 = load %struct.xen_pmu_amd_ctxt*, %struct.xen_pmu_amd_ctxt** %4, align 8
  %34 = load i32, i32* @counters, align 4
  %35 = call i64* @field_offset(%struct.xen_pmu_amd_ctxt* %33, i32 %34)
  store i64* %35, i64** %5, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %28, %19
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local %struct.xen_pmu_data* @get_xenpmu_data(...) #1

declare dso_local i32 @get_xenpmu_flags(...) #1

declare dso_local i64 @native_read_msr_safe(i64, i32*) #1

declare dso_local i64* @field_offset(%struct.xen_pmu_amd_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
