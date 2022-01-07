; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c___intel_pmu_lbr_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c___intel_pmu_lbr_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.x86_perf_task_context = type { i64, i32*, i32, i32, i64, i32, i32*, i32* }
%struct.cpu_hw_events = type { i64, %struct.x86_perf_task_context* }

@cpu_hw_events = common dso_local global i32 0, align 4
@LBR_NONE = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LBR_FORMAT_INFO = common dso_local global i64 0, align 8
@MSR_LBR_INFO_0 = common dso_local global i64 0, align 8
@LBR_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_perf_task_context*)* @__intel_pmu_lbr_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_pmu_lbr_save(%struct.x86_perf_task_context* %0) #0 {
  %2 = alloca %struct.x86_perf_task_context*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.x86_perf_task_context* %0, %struct.x86_perf_task_context** %2, align 8
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %3, align 8
  %10 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %11 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @LBR_NONE, align 4
  %16 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %17 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  br label %92

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = call i32 (...) @intel_pmu_lbr_tos()
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %70, %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rdlbr_from(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %73

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %40 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @rdlbr_to(i32 %45)
  %47 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %48 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1, i32 0), align 8
  %54 = load i64, i64* @LBR_FORMAT_INFO, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %37
  %57 = load i64, i64* @MSR_LBR_INFO_0, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %62 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rdmsrl(i64 %60, i32 %67)
  br label %69

69:                                               ; preds = %56, %37
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %22

73:                                               ; preds = %36, %22
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %76 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %79 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @LBR_VALID, align 4
  %81 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %82 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %84 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %85 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %84, i32 0, i32 1
  store %struct.x86_perf_task_context* %83, %struct.x86_perf_task_context** %85, align 8
  %86 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %87 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %91 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %73, %14
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @intel_pmu_lbr_tos(...) #1

declare dso_local i32 @rdlbr_from(i32) #1

declare dso_local i32 @rdlbr_to(i32) #1

declare dso_local i32 @rdmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
