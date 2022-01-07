; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_sf = type { i32, i32 }
%struct.hw_perf_event = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CPUM_SF_MIN_SDB = common dso_local global i64 0, align 8
@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"allocate_buffers: rate=%lu f=%lu sdb=%lu/%lu sample_size=%lu cpuhw=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_hw_sf*, %struct.hw_perf_event*)* @allocate_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_buffers(%struct.cpu_hw_sf* %0, %struct.hw_perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_hw_sf*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cpu_hw_sf* %0, %struct.cpu_hw_sf** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  store i64 4, i64* %9, align 8
  %10 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %10, i32 0, i32 1
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %13 = call i32 @SAMPL_RATE(%struct.hw_perf_event* %12)
  %14 = call i64 @sample_rate_to_freq(i32* %11, i32 %13)
  store i64 %14, i64* %7, align 8
  store i64 1, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sub nsw i32 %17, 64
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = udiv i64 %19, %20
  %22 = mul i64 %16, %21
  %23 = call i64 @DIV_ROUND_UP(i64 %15, i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @CPUM_SF_MIN_SDB, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* @CPUM_SF_MIN_SDB, align 8
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %32 = call i32 @sfb_init_allocs(i64 %30, %struct.hw_perf_event* %31)
  %33 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %34 = call i64 @sf_buffer_available(%struct.cpu_hw_sf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %55

37:                                               ; preds = %29
  %38 = load i32, i32* @sfdbg, align 4
  %39 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %40 = call i32 @SAMPL_RATE(%struct.hw_perf_event* %39)
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %44 = call i32 @sfb_max_limit(%struct.hw_perf_event* %43)
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %47 = call i32 @debug_sprintf_event(i32 %38, i32 3, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i64 %42, i32 %44, i64 %45, %struct.cpu_hw_sf* %46)
  %48 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %48, i32 0, i32 0
  %50 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %51 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %50, i32 0, i32 0
  %52 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %53 = call i32 @sfb_pending_allocs(i32* %51, %struct.hw_perf_event* %52)
  %54 = call i32 @alloc_sampling_buffer(i32* %49, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %37, %36
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @sample_rate_to_freq(i32*, i32) #1

declare dso_local i32 @SAMPL_RATE(%struct.hw_perf_event*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @sfb_init_allocs(i64, %struct.hw_perf_event*) #1

declare dso_local i64 @sf_buffer_available(%struct.cpu_hw_sf*) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i32, i64, i64, i32, i64, %struct.cpu_hw_sf*) #1

declare dso_local i32 @sfb_max_limit(%struct.hw_perf_event*) #1

declare dso_local i32 @alloc_sampling_buffer(i32*, i32) #1

declare dso_local i32 @sfb_pending_allocs(i32*, %struct.hw_perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
