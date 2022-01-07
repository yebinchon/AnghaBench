; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_add_event_to_24x7_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_add_event_to_24x7_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.hv_24x7_request_buffer = type { i64, i32, i64 }
%struct.hv_24x7_request = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [37 x i8] c"Too many requests for 24x7 HCALL %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.hv_24x7_request_buffer*)* @add_event_to_24x7_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event_to_24x7_request(%struct.perf_event* %0, %struct.hv_24x7_request_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hv_24x7_request_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.hv_24x7_request*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.hv_24x7_request_buffer* %1, %struct.hv_24x7_request_buffer** %5, align 8
  %10 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @max_num_requests(i32 %15)
  %17 = icmp sge i64 %12, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pr_devel(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %112

25:                                               ; preds = %2
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = call i32 @event_get_domain(%struct.perf_event* %26)
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %25
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = call i32 @event_get_chip(%struct.perf_event* %29)
  store i32 %30, i32* %6, align 4
  br label %37

31:                                               ; preds = %25
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = call i32 @event_get_core(%struct.perf_event* %32)
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %36 = call i32 @event_get_vcpu(%struct.perf_event* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %31, %28
  %38 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @H24x7_REQUEST_SIZE(i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = trunc i64 %44 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = mul i64 %52, %53
  %55 = getelementptr i8, i8* %50, i64 %54
  %56 = bitcast i8* %55 to %struct.hv_24x7_request*
  store %struct.hv_24x7_request* %56, %struct.hv_24x7_request** %9, align 8
  %57 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %58 = call i32 @event_get_domain(%struct.perf_event* %57)
  %59 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %60 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = call i8* @cpu_to_be16(i32 8)
  %62 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %63 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %65 = call i32 @event_get_offset(%struct.perf_event* %64)
  %66 = call i32 @cpu_to_be32(i32 %65)
  %67 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %68 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %70 = call i32 @event_get_lpar(%struct.perf_event* %69)
  %71 = call i8* @cpu_to_be16(i32 %70)
  %72 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %73 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = call i8* @cpu_to_be16(i32 1)
  %75 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %76 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i8* @cpu_to_be16(i32 %77)
  %79 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %80 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = call i8* @cpu_to_be16(i32 1)
  %82 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %83 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hv_24x7_request_buffer*, %struct.hv_24x7_request_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.hv_24x7_request_buffer, %struct.hv_24x7_request_buffer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %111

88:                                               ; preds = %37
  %89 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %90 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @domain_needs_aggregation(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %96 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %95, i32 0, i32 1
  store i32 -1, i32* %96, align 4
  br label %110

97:                                               ; preds = %88
  %98 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %99 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 129
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = srem i32 %103, 2
  %105 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %106 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.hv_24x7_request*, %struct.hv_24x7_request** %9, align 8
  %108 = getelementptr inbounds %struct.hv_24x7_request, %struct.hv_24x7_request* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %102, %97
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %37
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %18
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @max_num_requests(i32) #1

declare dso_local i32 @pr_devel(i8*, i64) #1

declare dso_local i32 @event_get_domain(%struct.perf_event*) #1

declare dso_local i32 @event_get_chip(%struct.perf_event*) #1

declare dso_local i32 @event_get_core(%struct.perf_event*) #1

declare dso_local i32 @event_get_vcpu(%struct.perf_event*) #1

declare dso_local i64 @H24x7_REQUEST_SIZE(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @event_get_offset(%struct.perf_event*) #1

declare dso_local i32 @event_get_lpar(%struct.perf_event*) #1

declare dso_local i64 @domain_needs_aggregation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
