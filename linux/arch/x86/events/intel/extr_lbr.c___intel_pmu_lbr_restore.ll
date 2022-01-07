; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c___intel_pmu_lbr_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c___intel_pmu_lbr_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.x86_perf_task_context = type { i64, i64, i32, i64, i32, i32*, i32*, i32* }
%struct.cpu_hw_events = type { i64, %struct.x86_perf_task_context* }

@cpu_hw_events = common dso_local global i32 0, align 4
@LBR_NONE = common dso_local global i64 0, align 8
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LBR_FORMAT_INFO = common dso_local global i64 0, align 8
@MSR_LBR_INFO_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_perf_task_context*)* @__intel_pmu_lbr_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_pmu_lbr_restore(%struct.x86_perf_task_context* %0) #0 {
  %2 = alloca %struct.x86_perf_task_context*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.x86_perf_task_context* %0, %struct.x86_perf_task_context** %2, align 8
  %8 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %8, %struct.cpu_hw_events** %3, align 8
  %9 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %10 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %15 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LBR_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %1
  %20 = call i32 (...) @intel_pmu_lbr_reset()
  br label %134

21:                                               ; preds = %13
  %22 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %23 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %26 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %27 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %26, i32 0, i32 1
  %28 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %27, align 8
  %29 = icmp eq %struct.x86_perf_task_context* %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %32 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @rdlbr_from(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @LBR_NONE, align 8
  %44 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %45 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %134

46:                                               ; preds = %38, %30, %21
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %96, %46
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %52 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %63 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wrlbr_from(i32 %61, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %72 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wrlbr_to(i32 %70, i32 %77)
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 2, i32 0), align 8
  %80 = load i64, i64* @LBR_FORMAT_INFO, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %55
  %83 = load i64, i64* @MSR_LBR_INFO_0, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %88 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @wrmsrl(i64 %86, i32 %93)
  br label %95

95:                                               ; preds = %82, %55
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %49

99:                                               ; preds = %49
  br label %100

100:                                              ; preds = %124, %99
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @wrlbr_from(i32 %110, i32 0)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @wrlbr_to(i32 %112, i32 0)
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 2, i32 0), align 8
  %115 = load i64, i64* @LBR_FORMAT_INFO, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %104
  %118 = load i64, i64* @MSR_LBR_INFO_0, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = call i32 @wrmsrl(i64 %121, i32 0)
  br label %123

123:                                              ; preds = %117, %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %100

127:                                              ; preds = %100
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1), align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @wrmsrl(i64 %128, i32 %129)
  %131 = load i64, i64* @LBR_NONE, align 8
  %132 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %2, align 8
  %133 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %42, %19
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @intel_pmu_lbr_reset(...) #1

declare dso_local i64 @rdlbr_from(i32) #1

declare dso_local i32 @wrlbr_from(i32, i32) #1

declare dso_local i32 @wrlbr_to(i32, i32) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
