; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_extend_sampling_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_extend_sampling_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buffer = type { i64 }
%struct.hw_perf_event = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sfb: extend: realloc failed with rc=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"sfb: extend: req=%lu alloc=%lu remaining=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sf_buffer*, %struct.hw_perf_event*)* @extend_sampling_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extend_sampling_buffer(%struct.sf_buffer* %0, %struct.hw_perf_event* %1) #0 {
  %3 = alloca %struct.sf_buffer*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sf_buffer* %0, %struct.sf_buffer** %3, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %4, align 8
  %8 = load %struct.sf_buffer*, %struct.sf_buffer** %3, align 8
  %9 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %10 = call i64 @sfb_pending_allocs(%struct.sf_buffer* %8, %struct.hw_perf_event* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.sf_buffer*, %struct.sf_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = call i32 (...) @sf_disable()
  %19 = load %struct.sf_buffer*, %struct.sf_buffer** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i32 @realloc_sampling_buffer(%struct.sf_buffer* %19, i64 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i32, i32* @sfdbg, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 (i32, i32, i8*, i64, ...) @debug_sprintf_event(i32 %26, i32 5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %25, %14
  %31 = load %struct.sf_buffer*, %struct.sf_buffer** %3, align 8
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %33 = call i64 @sfb_has_pending_allocs(%struct.sf_buffer* %31, %struct.hw_perf_event* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* @sfdbg, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.sf_buffer*, %struct.sf_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.sf_buffer, %struct.sf_buffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %40, %41
  %43 = load %struct.sf_buffer*, %struct.sf_buffer** %3, align 8
  %44 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %45 = call i64 @sfb_pending_allocs(%struct.sf_buffer* %43, %struct.hw_perf_event* %44)
  %46 = call i32 (i32, i32, i8*, i64, ...) @debug_sprintf_event(i32 %36, i32 5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %42, i64 %45)
  br label %47

47:                                               ; preds = %13, %35, %30
  ret void
}

declare dso_local i64 @sfb_pending_allocs(%struct.sf_buffer*, %struct.hw_perf_event*) #1

declare dso_local i32 @sf_disable(...) #1

declare dso_local i32 @realloc_sampling_buffer(%struct.sf_buffer*, i64, i32) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i64, ...) #1

declare dso_local i64 @sfb_has_pending_allocs(%struct.sf_buffer*, %struct.hw_perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
