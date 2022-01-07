; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_intel_pt_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_intel_pt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.perf_event* }
%struct.perf_event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pt_buffer = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@pt_ctx = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pt_interrupt() #0 {
  %1 = alloca %struct.pt*, align 8
  %2 = alloca %struct.pt_buffer*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.pt* @this_cpu_ptr(i32* @pt_ctx)
  store %struct.pt* %5, %struct.pt** %1, align 8
  %6 = load %struct.pt*, %struct.pt** %1, align 8
  %7 = getelementptr inbounds %struct.pt, %struct.pt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  store %struct.perf_event* %9, %struct.perf_event** %3, align 8
  %10 = load %struct.pt*, %struct.pt** %1, align 8
  %11 = getelementptr inbounds %struct.pt, %struct.pt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @READ_ONCE(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %92

16:                                               ; preds = %0
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = icmp ne %struct.perf_event* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %92

20:                                               ; preds = %16
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = call i32 @pt_config_stop(%struct.perf_event* %21)
  %23 = load %struct.pt*, %struct.pt** %1, align 8
  %24 = getelementptr inbounds %struct.pt, %struct.pt* %23, i32 0, i32 0
  %25 = call %struct.pt_buffer* @perf_get_aux(%struct.TYPE_9__* %24)
  store %struct.pt_buffer* %25, %struct.pt_buffer** %2, align 8
  %26 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %27 = icmp ne %struct.pt_buffer* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %92

29:                                               ; preds = %20
  %30 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %31 = call i32 @pt_read_offset(%struct.pt_buffer* %30)
  %32 = load %struct.pt*, %struct.pt** %1, align 8
  %33 = call i32 @pt_handle_status(%struct.pt* %32)
  %34 = load %struct.pt*, %struct.pt** %1, align 8
  %35 = call i32 @pt_update_head(%struct.pt* %34)
  %36 = load %struct.pt*, %struct.pt** %1, align 8
  %37 = getelementptr inbounds %struct.pt, %struct.pt* %36, i32 0, i32 0
  %38 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %39 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %38, i32 0, i32 3
  %40 = call i32 @local_xchg(i32* %39, i32 0)
  %41 = call i32 @perf_aux_output_end(%struct.TYPE_9__* %37, i32 %40)
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %92, label %47

47:                                               ; preds = %29
  %48 = load %struct.pt*, %struct.pt** %1, align 8
  %49 = getelementptr inbounds %struct.pt, %struct.pt* %48, i32 0, i32 0
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = call %struct.pt_buffer* @perf_aux_output_begin(%struct.TYPE_9__* %49, %struct.perf_event* %50)
  store %struct.pt_buffer* %51, %struct.pt_buffer** %2, align 8
  %52 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %53 = icmp ne %struct.pt_buffer* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @PERF_HES_STOPPED, align 4
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %92

59:                                               ; preds = %47
  %60 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %61 = load %struct.pt*, %struct.pt** %1, align 8
  %62 = getelementptr inbounds %struct.pt, %struct.pt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pt_buffer_reset_offsets(%struct.pt_buffer* %60, i32 %64)
  %66 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %67 = load %struct.pt*, %struct.pt** %1, align 8
  %68 = getelementptr inbounds %struct.pt, %struct.pt* %67, i32 0, i32 0
  %69 = call i32 @pt_buffer_reset_markers(%struct.pt_buffer* %66, %struct.TYPE_9__* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load %struct.pt*, %struct.pt** %1, align 8
  %74 = getelementptr inbounds %struct.pt, %struct.pt* %73, i32 0, i32 0
  %75 = call i32 @perf_aux_output_end(%struct.TYPE_9__* %74, i32 0)
  br label %92

76:                                               ; preds = %59
  %77 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %78 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_8__* @topa_to_page(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %84 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pt_buffer*, %struct.pt_buffer** %2, align 8
  %87 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pt_config_buffer(i32 %82, i32 %85, i32 %88)
  %90 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %91 = call i32 @pt_config(%struct.perf_event* %90)
  br label %92

92:                                               ; preds = %15, %19, %28, %54, %72, %76, %29
  ret void
}

declare dso_local %struct.pt* @this_cpu_ptr(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @pt_config_stop(%struct.perf_event*) #1

declare dso_local %struct.pt_buffer* @perf_get_aux(%struct.TYPE_9__*) #1

declare dso_local i32 @pt_read_offset(%struct.pt_buffer*) #1

declare dso_local i32 @pt_handle_status(%struct.pt*) #1

declare dso_local i32 @pt_update_head(%struct.pt*) #1

declare dso_local i32 @perf_aux_output_end(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @local_xchg(i32*, i32) #1

declare dso_local %struct.pt_buffer* @perf_aux_output_begin(%struct.TYPE_9__*, %struct.perf_event*) #1

declare dso_local i32 @pt_buffer_reset_offsets(%struct.pt_buffer*, i32) #1

declare dso_local i32 @pt_buffer_reset_markers(%struct.pt_buffer*, %struct.TYPE_9__*) #1

declare dso_local i32 @pt_config_buffer(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @topa_to_page(i32) #1

declare dso_local i32 @pt_config(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
