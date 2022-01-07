; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_make_24x7_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_make_24x7_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_24x7_request_buffer = type { i32, i32, %struct.hv_24x7_request* }
%struct.hv_24x7_request = type { i32, i32, i32, i32 }
%struct.hv_24x7_data_result_buffer = type { i32, i32, %struct.hv_24x7_request* }

@H_GET_24X7_DATA = common dso_local global i32 0, align 4
@H24x7_DATA_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"hcall failed: [%d %#x %#x %d] => ret 0x%lx (%ld) detail=0x%x failing ix=%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_24x7_request_buffer*, %struct.hv_24x7_data_result_buffer*)* @make_24x7_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_24x7_request(%struct.hv_24x7_request_buffer* %0, %struct.hv_24x7_data_result_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_24x7_request_buffer*, align 8
  %5 = alloca %struct.hv_24x7_data_result_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hv_24x7_request*, align 8
  store %struct.hv_24x7_request_buffer* %0, %struct.hv_24x7_request_buffer** %4, align 8
  store %struct.hv_24x7_data_result_buffer* %1, %struct.hv_24x7_data_result_buffer** %5, align 8
  %8 = load i32, i32* @H_GET_24X7_DATA, align 4
  %9 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %4, align 8
  %10 = call i32 @virt_to_phys(%struct.hv_24x7_request_buffer* %9)
  %11 = load i32, i32* @H24x7_DATA_BUFFER_SIZE, align 4
  %12 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %5, align 8
  %13 = bitcast %struct.hv_24x7_data_result_buffer* %12 to %struct.hv_24x7_request_buffer*
  %14 = call i32 @virt_to_phys(%struct.hv_24x7_request_buffer* %13)
  %15 = load i32, i32* @H24x7_DATA_BUFFER_SIZE, align 4
  %16 = call i64 @plpar_hcall_norets(i32 %8, i32 %10, i32 %11, i32 %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %20, i32 0, i32 2
  %22 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %21, align 8
  store %struct.hv_24x7_request* %22, %struct.hv_24x7_request** %7, align 8
  %23 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %7, align 8
  %24 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %7, align 8
  %27 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %7, align 8
  %30 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %7, align 8
  %33 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.hv_24x7_data_result_buffer, %struct.hv_24x7_data_result_buffer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hv_24x7_data_result_buffer*, %struct.hv_24x7_data_result_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.hv_24x7_data_result_buffer, %struct.hv_24x7_data_result_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_notice_ratelimited(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i64 %35, i64 %36, i32 %39, i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @plpar_hcall_norets(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_phys(%struct.hv_24x7_request_buffer*) #1

declare dso_local i32 @pr_notice_ratelimited(i8*, i32, i32, i32, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
