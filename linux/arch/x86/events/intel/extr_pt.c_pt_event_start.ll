; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64 }
%struct.pt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pt_buffer = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@pt_ctx = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @pt_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_event_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.pt*, align 8
  %7 = alloca %struct.pt_buffer*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %5, align 8
  %10 = call %struct.pt* @this_cpu_ptr(i32* @pt_ctx)
  store %struct.pt* %10, %struct.pt** %6, align 8
  %11 = load %struct.pt*, %struct.pt** %6, align 8
  %12 = getelementptr inbounds %struct.pt, %struct.pt* %11, i32 0, i32 0
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = call %struct.pt_buffer* @perf_aux_output_begin(%struct.TYPE_6__* %12, %struct.perf_event* %13)
  store %struct.pt_buffer* %14, %struct.pt_buffer** %7, align 8
  %15 = load %struct.pt_buffer*, %struct.pt_buffer** %7, align 8
  %16 = icmp ne %struct.pt_buffer* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.pt_buffer*, %struct.pt_buffer** %7, align 8
  %20 = load %struct.pt*, %struct.pt** %6, align 8
  %21 = getelementptr inbounds %struct.pt, %struct.pt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pt_buffer_reset_offsets(%struct.pt_buffer* %19, i32 %23)
  %25 = load %struct.pt_buffer*, %struct.pt_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %18
  %30 = load %struct.pt_buffer*, %struct.pt_buffer** %7, align 8
  %31 = load %struct.pt*, %struct.pt** %6, align 8
  %32 = getelementptr inbounds %struct.pt, %struct.pt* %31, i32 0, i32 0
  %33 = call i64 @pt_buffer_reset_markers(%struct.pt_buffer* %30, %struct.TYPE_6__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %59

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.pt*, %struct.pt** %6, align 8
  %39 = getelementptr inbounds %struct.pt, %struct.pt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WRITE_ONCE(i32 %40, i32 1)
  %42 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %43 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.pt_buffer*, %struct.pt_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_5__* @topa_to_page(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pt_buffer*, %struct.pt_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_buffer*, %struct.pt_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pt_config_buffer(i32 %49, i32 %52, i32 %55)
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = call i32 @pt_config(%struct.perf_event* %57)
  br label %67

59:                                               ; preds = %35
  %60 = load %struct.pt*, %struct.pt** %6, align 8
  %61 = getelementptr inbounds %struct.pt, %struct.pt* %60, i32 0, i32 0
  %62 = call i32 @perf_aux_output_end(%struct.TYPE_6__* %61, i32 0)
  br label %63

63:                                               ; preds = %59, %17
  %64 = load i64, i64* @PERF_HES_STOPPED, align 8
  %65 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %66 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %37
  ret void
}

declare dso_local %struct.pt* @this_cpu_ptr(i32*) #1

declare dso_local %struct.pt_buffer* @perf_aux_output_begin(%struct.TYPE_6__*, %struct.perf_event*) #1

declare dso_local i32 @pt_buffer_reset_offsets(%struct.pt_buffer*, i32) #1

declare dso_local i64 @pt_buffer_reset_markers(%struct.pt_buffer*, %struct.TYPE_6__*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @pt_config_buffer(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @topa_to_page(i32) #1

declare dso_local i32 @pt_config(%struct.perf_event*) #1

declare dso_local i32 @perf_aux_output_end(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
