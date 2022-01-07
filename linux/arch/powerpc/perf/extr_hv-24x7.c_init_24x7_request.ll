; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_init_24x7_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_init_24x7_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_24x7_request_buffer = type { i32 }
%struct.hv_24x7_data_result_buffer = type { i32 }

@H24x7_DATA_BUFFER_SIZE = common dso_local global i32 0, align 4
@interface_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_24x7_request_buffer*, %struct.hv_24x7_data_result_buffer*)* @init_24x7_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_24x7_request(%struct.hv_24x7_request_buffer* %0, %struct.hv_24x7_data_result_buffer* %1) #0 {
  %3 = alloca %struct.hv_24x7_request_buffer*, align 8
  %4 = alloca %struct.hv_24x7_data_result_buffer*, align 8
  store %struct.hv_24x7_request_buffer* %0, %struct.hv_24x7_request_buffer** %3, align 8
  store %struct.hv_24x7_data_result_buffer* %1, %struct.hv_24x7_data_result_buffer** %4, align 8
  %5 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %3, align 8
  %6 = load i32, i32* @H24x7_DATA_BUFFER_SIZE, align 4
  %7 = call i32 @memset(%struct.hv_24x7_request_buffer* %5, i32 0, i32 %6)
  %8 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %4, align 8
  %9 = bitcast %struct.hv_24x7_data_result_buffer* %8 to %struct.hv_24x7_request_buffer*
  %10 = load i32, i32* @H24x7_DATA_BUFFER_SIZE, align 4
  %11 = call i32 @memset(%struct.hv_24x7_request_buffer* %9, i32 0, i32 %10)
  %12 = load i32, i32* @interface_version, align 4
  %13 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @memset(%struct.hv_24x7_request_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
