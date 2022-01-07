; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_intel_bts_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_intel_bts_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_store = type { i64, i64 }
%struct.bts_ctx = type { %struct.TYPE_5__, i32, %struct.debug_store* }
%struct.TYPE_5__ = type { %struct.perf_event* }
%struct.perf_event = type { i32 }
%struct.bts_buffer = type { i32, i32, i64 }

@cpu_hw_events = common dso_local global i32 0, align 4
@bts_ctx = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@BTS_STATE_STOPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_bts_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.debug_store*, align 8
  %3 = alloca %struct.bts_ctx*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.bts_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call %struct.bts_ctx* @this_cpu_ptr(i32* @cpu_hw_events)
  %10 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %9, i32 0, i32 2
  %11 = load %struct.debug_store*, %struct.debug_store** %10, align 8
  store %struct.debug_store* %11, %struct.debug_store** %2, align 8
  %12 = call %struct.bts_ctx* @this_cpu_ptr(i32* @bts_ctx)
  store %struct.bts_ctx* %12, %struct.bts_ctx** %3, align 8
  %13 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  store %struct.perf_event* %16, %struct.perf_event** %4, align 8
  %17 = load i32, i32* @ENOSPC, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.debug_store*, %struct.debug_store** %2, align 8
  %20 = icmp ne %struct.debug_store* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %0
  %22 = load %struct.debug_store*, %struct.debug_store** %2, align 8
  %23 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.debug_store*, %struct.debug_store** %2, align 8
  %26 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %21, %0
  %31 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @READ_ONCE(i32 %33)
  %35 = load i64, i64* @BTS_STATE_STOPPED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %1, align 4
  br label %102

39:                                               ; preds = %30
  %40 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %40, i32 0, i32 0
  %42 = call %struct.bts_buffer* @perf_get_aux(%struct.TYPE_5__* %41)
  store %struct.bts_buffer* %42, %struct.bts_buffer** %5, align 8
  %43 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %44 = icmp ne %struct.bts_buffer* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %1, align 4
  br label %102

47:                                               ; preds = %39
  %48 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %102

53:                                               ; preds = %47
  %54 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %54, i32 0, i32 1
  %56 = call i64 @local_read(i32* %55)
  store i64 %56, i64* %6, align 8
  %57 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %58 = call i32 @bts_update(%struct.bts_ctx* %57)
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %60, i32 0, i32 1
  %62 = call i64 @local_read(i32* %61)
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %1, align 4
  br label %102

66:                                               ; preds = %53
  %67 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %67, i32 0, i32 0
  %69 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %70 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %69, i32 0, i32 0
  %71 = call i32 @local_xchg(i32* %70, i32 0)
  %72 = call i32 @perf_aux_output_end(%struct.TYPE_5__* %68, i32 %71)
  %73 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %73, i32 0, i32 0
  %75 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %76 = call %struct.bts_buffer* @perf_aux_output_begin(%struct.TYPE_5__* %74, %struct.perf_event* %75)
  store %struct.bts_buffer* %76, %struct.bts_buffer** %5, align 8
  %77 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %78 = icmp ne %struct.bts_buffer* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %81 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %81, i32 0, i32 0
  %83 = call i32 @bts_buffer_reset(%struct.bts_buffer* %80, %struct.TYPE_5__* %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %79, %66
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* @BTS_STATE_STOPPED, align 8
  %92 = call i32 @WRITE_ONCE(i32 %90, i64 %91)
  %93 = load %struct.bts_buffer*, %struct.bts_buffer** %5, align 8
  %94 = icmp ne %struct.bts_buffer* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = call i32 (...) @barrier()
  %97 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %97, i32 0, i32 0
  %99 = call i32 @perf_aux_output_end(%struct.TYPE_5__* %98, i32 0)
  br label %100

100:                                              ; preds = %95, %87
  br label %101

101:                                              ; preds = %100, %84
  store i32 1, i32* %1, align 4
  br label %102

102:                                              ; preds = %101, %64, %52, %45, %37
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local %struct.bts_ctx* @this_cpu_ptr(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.bts_buffer* @perf_get_aux(%struct.TYPE_5__*) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @bts_update(%struct.bts_ctx*) #1

declare dso_local i32 @perf_aux_output_end(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @local_xchg(i32*, i32) #1

declare dso_local %struct.bts_buffer* @perf_aux_output_begin(%struct.TYPE_5__*, %struct.perf_event*) #1

declare dso_local i32 @bts_buffer_reset(%struct.bts_buffer*, %struct.TYPE_5__*) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
