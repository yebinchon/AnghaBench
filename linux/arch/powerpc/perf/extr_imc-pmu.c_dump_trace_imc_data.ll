; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_dump_trace_imc_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_dump_trace_imc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.trace_imc_data = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.perf_event_header = type { i32 }
%struct.perf_output_handle = type { i32 }

@trace_imc_mem_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @dump_trace_imc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_trace_imc_data(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.trace_imc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_sample_data, align 4
  %8 = alloca %struct.perf_event_header, align 4
  %9 = alloca %struct.perf_output_handle, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = call i64 (...) @get_trace_imc_event_base_addr()
  %11 = inttoptr i64 %10 to %struct.trace_imc_data*
  store %struct.trace_imc_data* %11, %struct.trace_imc_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* @trace_imc_mem_size, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  %20 = load %struct.trace_imc_data*, %struct.trace_imc_data** %3, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %22 = call i32 @trace_imc_prepare_sample(%struct.trace_imc_data* %20, %struct.perf_sample_data* %7, i32* %6, %struct.perf_event_header* %8, %struct.perf_event* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %43

26:                                               ; preds = %19
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @perf_output_begin(%struct.perf_output_handle* %9, %struct.perf_event* %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %35 = call i32 @perf_output_sample(%struct.perf_output_handle* %9, %struct.perf_event_header* %8, %struct.perf_sample_data* %7, %struct.perf_event* %34)
  %36 = call i32 @perf_output_end(%struct.perf_output_handle* %9)
  br label %37

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = load %struct.trace_imc_data*, %struct.trace_imc_data** %3, align 8
  %42 = getelementptr inbounds %struct.trace_imc_data, %struct.trace_imc_data* %41, i32 1
  store %struct.trace_imc_data* %42, %struct.trace_imc_data** %3, align 8
  br label %12

43:                                               ; preds = %32, %25, %12
  ret void
}

declare dso_local i64 @get_trace_imc_event_base_addr(...) #1

declare dso_local i32 @trace_imc_prepare_sample(%struct.trace_imc_data*, %struct.perf_sample_data*, i32*, %struct.perf_event_header*, %struct.perf_event*) #1

declare dso_local i64 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i32 @perf_output_sample(%struct.perf_output_handle*, %struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
