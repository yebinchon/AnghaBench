; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_h_24x7_event_start_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_h_24x7_event_start_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.hv_24x7_request_buffer = type { i32 }
%struct.hv_24x7_data_result_buffer = type { i32 }

@hv_24x7_txn_flags = common dso_local global i32 0, align 4
@PERF_PMU_TXN_READ = common dso_local global i32 0, align 4
@hv_24x7_reqb = common dso_local global i32 0, align 4
@hv_24x7_resb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*, i32)* @h_24x7_event_start_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_24x7_event_start_txn(%struct.pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_24x7_request_buffer*, align 8
  %6 = alloca %struct.hv_24x7_data_result_buffer*, align 8
  store %struct.pmu* %0, %struct.pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @hv_24x7_txn_flags, align 4
  %8 = call i32 @__this_cpu_read(i32 %7)
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* @hv_24x7_txn_flags, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @__this_cpu_write(i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PERF_PMU_TXN_READ, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* @hv_24x7_reqb, align 4
  %21 = call i64 @get_cpu_var(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.hv_24x7_request_buffer*
  store %struct.hv_24x7_request_buffer* %23, %struct.hv_24x7_request_buffer** %5, align 8
  %24 = load i32, i32* @hv_24x7_resb, align 4
  %25 = call i64 @get_cpu_var(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.hv_24x7_data_result_buffer*
  store %struct.hv_24x7_data_result_buffer* %27, %struct.hv_24x7_data_result_buffer** %6, align 8
  %28 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %29 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %6, align 8
  %30 = call i32 @init_24x7_request(%struct.hv_24x7_request_buffer* %28, %struct.hv_24x7_data_result_buffer* %29)
  %31 = load i32, i32* @hv_24x7_resb, align 4
  %32 = call i32 @put_cpu_var(i32 %31)
  %33 = load i32, i32* @hv_24x7_reqb, align 4
  %34 = call i32 @put_cpu_var(i32 %33)
  br label %35

35:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i64 @get_cpu_var(i32) #1

declare dso_local i32 @init_24x7_request(%struct.hv_24x7_request_buffer*, %struct.hv_24x7_data_result_buffer*) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
