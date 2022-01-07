; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-gpci.c_single_gpci_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-gpci.c_single_gpci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_gpci_request_buffer = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i8*, i8* }

@hv_gpci_reqb = common dso_local global i32 0, align 4
@HGPCI_REQ_BUFFER_SIZE = common dso_local global i32 0, align 4
@H_GET_PERF_COUNTER_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hcall failed: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64, i64, i64, i64*)* @single_gpci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @single_gpci_request(i64 %0, i64 %1, i32 %2, i64 %3, i64 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.hv_gpci_request_buffer*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64* %6, i64** %14, align 8
  %19 = load i32, i32* @hv_gpci_reqb, align 4
  %20 = call i64 @get_cpu_var(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.hv_gpci_request_buffer*
  store %struct.hv_gpci_request_buffer* %22, %struct.hv_gpci_request_buffer** %18, align 8
  %23 = load %struct.hv_gpci_request_buffer*, %struct.hv_gpci_request_buffer** %18, align 8
  %24 = load i32, i32* @HGPCI_REQ_BUFFER_SIZE, align 4
  %25 = call i32 @memset(%struct.hv_gpci_request_buffer* %23, i32 0, i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = call i8* @cpu_to_be32(i64 %26)
  %28 = load %struct.hv_gpci_request_buffer*, %struct.hv_gpci_request_buffer** %18, align 8
  %29 = getelementptr inbounds %struct.hv_gpci_request_buffer, %struct.hv_gpci_request_buffer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @cpu_to_be32(i64 %31)
  %33 = load %struct.hv_gpci_request_buffer*, %struct.hv_gpci_request_buffer** %18, align 8
  %34 = getelementptr inbounds %struct.hv_gpci_request_buffer, %struct.hv_gpci_request_buffer* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @cpu_to_be16(i32 %36)
  %38 = load %struct.hv_gpci_request_buffer*, %struct.hv_gpci_request_buffer** %18, align 8
  %39 = getelementptr inbounds %struct.hv_gpci_request_buffer, %struct.hv_gpci_request_buffer* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.hv_gpci_request_buffer*, %struct.hv_gpci_request_buffer** %18, align 8
  %43 = getelementptr inbounds %struct.hv_gpci_request_buffer, %struct.hv_gpci_request_buffer* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i32, i32* @H_GET_PERF_COUNTER_INFO, align 4
  %46 = load %struct.hv_gpci_request_buffer*, %struct.hv_gpci_request_buffer** %18, align 8
  %47 = call i32 @virt_to_phys(%struct.hv_gpci_request_buffer* %46)
  %48 = load i32, i32* @HGPCI_REQ_BUFFER_SIZE, align 4
  %49 = call i64 @plpar_hcall_norets(i32 %45, i32 %47, i32 %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %7
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @pr_devel(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %82

55:                                               ; preds = %7
  store i64 0, i64* %17, align 8
  %56 = load i64, i64* %12, align 8
  store i64 %56, i64* %16, align 8
  br label %57

57:                                               ; preds = %76, %55
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %59, %60
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.hv_gpci_request_buffer*, %struct.hv_gpci_request_buffer** %18, align 8
  %65 = getelementptr inbounds %struct.hv_gpci_request_buffer, %struct.hv_gpci_request_buffer* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %16, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sub i64 %70, %71
  %73 = shl i64 %69, %72
  %74 = load i64, i64* %17, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %63
  %77 = load i64, i64* %16, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %16, align 8
  br label %57

79:                                               ; preds = %57
  %80 = load i64, i64* %17, align 8
  %81 = load i64*, i64** %14, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %52
  %83 = load i32, i32* @hv_gpci_reqb, align 4
  %84 = call i32 @put_cpu_var(i32 %83)
  %85 = load i64, i64* %15, align 8
  ret i64 %85
}

declare dso_local i64 @get_cpu_var(i32) #1

declare dso_local i32 @memset(%struct.hv_gpci_request_buffer*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i32) #1

declare dso_local i32 @virt_to_phys(%struct.hv_gpci_request_buffer*) #1

declare dso_local i32 @pr_devel(i8*, i64) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
