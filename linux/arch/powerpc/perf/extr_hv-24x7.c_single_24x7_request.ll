; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_single_24x7_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_single_24x7_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.hv_24x7_request_buffer = type { i32 }
%struct.hv_24x7_data_result_buffer = type { i32 }

@hv_24x7_reqb = common dso_local global i32 0, align 4
@hv_24x7_resb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32*)* @single_24x7_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @single_24x7_request(%struct.perf_event* %0, i32* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_24x7_request_buffer*, align 8
  %7 = alloca %struct.hv_24x7_data_result_buffer*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @BUILD_BUG_ON(i32 0)
  %9 = call i32 @BUILD_BUG_ON(i32 0)
  %10 = load i32, i32* @hv_24x7_reqb, align 4
  %11 = call i64 @get_cpu_var(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hv_24x7_request_buffer*
  store %struct.hv_24x7_request_buffer* %13, %struct.hv_24x7_request_buffer** %6, align 8
  %14 = load i32, i32* @hv_24x7_resb, align 4
  %15 = call i64 @get_cpu_var(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.hv_24x7_data_result_buffer*
  store %struct.hv_24x7_data_result_buffer* %17, %struct.hv_24x7_data_result_buffer** %7, align 8
  %18 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %6, align 8
  %19 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %7, align 8
  %20 = call i32 @init_24x7_request(%struct.hv_24x7_request_buffer* %18, %struct.hv_24x7_data_result_buffer* %19)
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %6, align 8
  %23 = call i32 @add_event_to_24x7_request(%struct.perf_event* %21, %struct.hv_24x7_request_buffer* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %6, align 8
  %29 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %7, align 8
  %30 = call i32 @make_24x7_request(%struct.hv_24x7_request_buffer* %28, %struct.hv_24x7_data_result_buffer* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %42

34:                                               ; preds = %27
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %7, align 8
  %37 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.hv_24x7_data_result_buffer, %struct.hv_24x7_data_result_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @get_count_from_result(%struct.perf_event* %35, %struct.hv_24x7_data_result_buffer* %36, i32 %39, i32* %40, i32* null)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %34, %33, %26
  %43 = load i32, i32* @hv_24x7_reqb, align 4
  %44 = call i32 @put_cpu_var(i32 %43)
  %45 = load i32, i32* @hv_24x7_resb, align 4
  %46 = call i32 @put_cpu_var(i32 %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @get_cpu_var(i32) #1

declare dso_local i32 @init_24x7_request(%struct.hv_24x7_request_buffer*, %struct.hv_24x7_data_result_buffer*) #1

declare dso_local i32 @add_event_to_24x7_request(%struct.perf_event*, %struct.hv_24x7_request_buffer*) #1

declare dso_local i32 @make_24x7_request(%struct.hv_24x7_request_buffer*, %struct.hv_24x7_data_result_buffer*) #1

declare dso_local i32 @get_count_from_result(%struct.perf_event*, %struct.hv_24x7_data_result_buffer*, i32, i32*, i32*) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
