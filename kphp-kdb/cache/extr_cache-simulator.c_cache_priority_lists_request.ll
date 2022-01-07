; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_cache_priority_lists_request.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_cache_priority_lists_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, double, i32 }

@.str = private unnamed_addr constant [34 x i8] c"<%d> cache_priority_list_request\0A\00", align 1
@next_priority_lists_request_time = common dso_local global i32 0, align 4
@simulation_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@simulation_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CACHE_MAX_HEAP_SIZE = common dso_local global i32 0, align 4
@heap_cached = common dso_local global i32 0, align 4
@heap_uncached = common dso_local global i32 0, align 4
@heap_cached_files = common dso_local global i32 0, align 4
@heap_uncached_files = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"heap_cached_files: %d, heap_uncached_files: %d\0A\00", align 1
@cached_ptr = common dso_local global i32 0, align 4
@uncached_ptr = common dso_local global i64 0, align 8
@next_download_file_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_priority_lists_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_priority_lists_request() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @next_priority_lists_request_time, align 4
  %5 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call double (...) @get_rusage_time()
  %7 = fneg double %6
  store double %7, double* %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 1), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 0), align 8
  %12 = mul nsw i32 2, %11
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 1), align 4
  %20 = mul nsw i32 2, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %18
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @cache_get_priority_heaps(i32* @heap_cached, i32* @heap_uncached, i32 %38, i32 %39, i32* @heap_cached_files, i32* @heap_uncached_files)
  %41 = load i32, i32* @heap_cached_files, align 4
  %42 = load i32, i32* @heap_uncached_files, align 4
  %43 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call double (...) @get_rusage_time()
  %45 = load double, double* %1, align 8
  %46 = fadd double %45, %44
  store double %46, double* %1, align 8
  %47 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 2), align 8
  %48 = load double, double* %1, align 8
  %49 = fcmp olt double %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load double, double* %1, align 8
  store double %51, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 2), align 8
  br label %52

52:                                               ; preds = %50, %37
  store i32 1, i32* @cached_ptr, align 4
  store i64 0, i64* @uncached_ptr, align 8
  %53 = load i32, i32* @next_priority_lists_request_time, align 4
  store i32 %53, i32* @next_download_file_time, align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 0), align 8
  %55 = load i32, i32* @next_priority_lists_request_time, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @next_priority_lists_request_time, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 3), align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 3), align 8
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local double @get_rusage_time(...) #1

declare dso_local i32 @cache_get_priority_heaps(i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
