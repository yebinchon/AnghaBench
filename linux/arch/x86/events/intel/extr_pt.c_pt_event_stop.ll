; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pt = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.perf_event* }
%struct.pt_buffer = type { i32, i32, i64 }

@pt_ctx = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i64 0, align 8
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @pt_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt*, align 8
  %6 = alloca %struct.pt_buffer*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.pt* @this_cpu_ptr(i32* @pt_ctx)
  store %struct.pt* %7, %struct.pt** %5, align 8
  %8 = load %struct.pt*, %struct.pt** %5, align 8
  %9 = getelementptr inbounds %struct.pt, %struct.pt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @WRITE_ONCE(i32 %10, i32 0)
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = call i32 @pt_config_stop(%struct.perf_event* %12)
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PERF_HES_STOPPED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %78

21:                                               ; preds = %2
  %22 = load i64, i64* @PERF_HES_STOPPED, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PERF_EF_UPDATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %21
  %31 = load %struct.pt*, %struct.pt** %5, align 8
  %32 = getelementptr inbounds %struct.pt, %struct.pt* %31, i32 0, i32 0
  %33 = call %struct.pt_buffer* @perf_get_aux(%struct.TYPE_5__* %32)
  store %struct.pt_buffer* %33, %struct.pt_buffer** %6, align 8
  %34 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %35 = icmp ne %struct.pt_buffer* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %78

37:                                               ; preds = %30
  %38 = load %struct.pt*, %struct.pt** %5, align 8
  %39 = getelementptr inbounds %struct.pt, %struct.pt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.perf_event*, %struct.perf_event** %40, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = icmp ne %struct.perf_event* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON_ONCE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %78

48:                                               ; preds = %37
  %49 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %50 = call i32 @pt_read_offset(%struct.pt_buffer* %49)
  %51 = load %struct.pt*, %struct.pt** %5, align 8
  %52 = call i32 @pt_handle_status(%struct.pt* %51)
  %53 = load %struct.pt*, %struct.pt** %5, align 8
  %54 = call i32 @pt_update_head(%struct.pt* %53)
  %55 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %60, i32 0, i32 1
  %62 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @local_xchg(i32* %61, i32 %66)
  %68 = load %struct.pt*, %struct.pt** %5, align 8
  %69 = getelementptr inbounds %struct.pt, %struct.pt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %59, %48
  %72 = load %struct.pt*, %struct.pt** %5, align 8
  %73 = getelementptr inbounds %struct.pt, %struct.pt* %72, i32 0, i32 0
  %74 = load %struct.pt_buffer*, %struct.pt_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %74, i32 0, i32 1
  %76 = call i32 @local_xchg(i32* %75, i32 0)
  %77 = call i32 @perf_aux_output_end(%struct.TYPE_5__* %73, i32 %76)
  br label %78

78:                                               ; preds = %20, %36, %47, %71, %21
  ret void
}

declare dso_local %struct.pt* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @pt_config_stop(%struct.perf_event*) #1

declare dso_local %struct.pt_buffer* @perf_get_aux(%struct.TYPE_5__*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pt_read_offset(%struct.pt_buffer*) #1

declare dso_local i32 @pt_handle_status(%struct.pt*) #1

declare dso_local i32 @pt_update_head(%struct.pt*) #1

declare dso_local i32 @local_xchg(i32*, i32) #1

declare dso_local i32 @perf_aux_output_end(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
