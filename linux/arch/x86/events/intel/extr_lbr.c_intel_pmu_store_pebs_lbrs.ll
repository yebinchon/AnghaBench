; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_store_pebs_lbrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_store_pebs_lbrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pebs_lbr = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.cpu_hw_events = type { %struct.perf_branch_entry*, %struct.TYPE_4__ }
%struct.perf_branch_entry = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@LBR_INFO_MISPRED = common dso_local global i32 0, align 4
@LBR_INFO_IN_TX = common dso_local global i32 0, align 4
@LBR_INFO_ABORT = common dso_local global i32 0, align 4
@LBR_INFO_CYCLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_store_pebs_lbrs(%struct.pebs_lbr* %0) #0 {
  %2 = alloca %struct.pebs_lbr*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_branch_entry*, align 8
  store %struct.pebs_lbr* %0, %struct.pebs_lbr** %2, align 8
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %3, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 4
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %93, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %96

16:                                               ; preds = %12
  %17 = load %struct.pebs_lbr*, %struct.pebs_lbr** %2, align 8
  %18 = getelementptr inbounds %struct.pebs_lbr, %struct.pebs_lbr* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 0
  %27 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %27, i64 %29
  store %struct.perf_branch_entry* %30, %struct.perf_branch_entry** %6, align 8
  %31 = load %struct.pebs_lbr*, %struct.pebs_lbr** %2, align 8
  %32 = getelementptr inbounds %struct.pebs_lbr, %struct.pebs_lbr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %40 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pebs_lbr*, %struct.pebs_lbr** %2, align 8
  %42 = getelementptr inbounds %struct.pebs_lbr, %struct.pebs_lbr* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %50 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @LBR_INFO_MISPRED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %59 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @LBR_INFO_MISPRED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %67 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @LBR_INFO_IN_TX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %76 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @LBR_INFO_ABORT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %85 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @LBR_INFO_CYCLES, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %90 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.perf_branch_entry*, %struct.perf_branch_entry** %6, align 8
  %92 = getelementptr inbounds %struct.perf_branch_entry, %struct.perf_branch_entry* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %16
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %12

96:                                               ; preds = %12
  %97 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %98 = call i32 @intel_pmu_lbr_filter(%struct.cpu_hw_events* %97)
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @intel_pmu_lbr_filter(%struct.cpu_hw_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
