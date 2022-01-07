; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.hw_perf_event }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hw_perf_event = type { i32, i32 }
%struct.amd_uncore = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMD64_RAW_EVENT_MASK_NB = common dso_local global i32 0, align 4
@l3_mask = common dso_local global i64 0, align 8
@smp_num_siblings = common dso_local global i32 0, align 4
@AMD64_L3_THREAD_SHIFT = common dso_local global i32 0, align 4
@AMD64_L3_THREAD_MASK = common dso_local global i32 0, align 4
@AMD64_L3_SLICE_MASK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @amd_uncore_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_uncore_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.amd_uncore*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 4
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = call i64 @is_sampling_event(%struct.perf_event* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %117

38:                                               ; preds = %28
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AMD64_RAW_EVENT_MASK_NB, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %46 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  %49 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %117

56:                                               ; preds = %38
  %57 = load i64, i64* @l3_mask, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %56
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = call i64 @is_llc_event(%struct.perf_event* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %59
  %64 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @cpu_data(i32 %66)
  %68 = bitcast %struct.TYPE_6__* %7 to i64*
  store i64 %67, i64* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %70, 4
  %72 = mul nsw i32 2, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @smp_num_siblings, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %86

75:                                               ; preds = %63
  %76 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @cpu_data(i32 %78)
  %80 = bitcast %struct.TYPE_6__* %8 to i64*
  store i64 %79, i64* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %75, %63
  %87 = load i32, i32* @AMD64_L3_THREAD_SHIFT, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %87, %88
  %90 = zext i32 %89 to i64
  %91 = shl i64 1, %90
  %92 = load i32, i32* @AMD64_L3_THREAD_MASK, align 4
  %93 = sext i32 %92 to i64
  %94 = and i64 %91, %93
  %95 = load i64, i64* @AMD64_L3_SLICE_MASK, align 8
  %96 = or i64 %94, %95
  %97 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %98 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = or i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  br label %103

103:                                              ; preds = %86, %59, %56
  %104 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %105 = call %struct.amd_uncore* @event_to_amd_uncore(%struct.perf_event* %104)
  store %struct.amd_uncore* %105, %struct.amd_uncore** %4, align 8
  %106 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %107 = icmp ne %struct.amd_uncore* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %117

111:                                              ; preds = %103
  %112 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %113 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %116 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %108, %53, %35, %21
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i64 @is_llc_event(%struct.perf_event*) #1

declare dso_local i64 @cpu_data(i32) #1

declare dso_local %struct.amd_uncore* @event_to_amd_uncore(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
