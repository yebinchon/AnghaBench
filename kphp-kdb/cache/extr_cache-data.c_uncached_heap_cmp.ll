; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_uncached_heap_cmp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_uncached_heap_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i64 }

@uri_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @uncached_heap_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncached_heap_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca %struct.cache_uri*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cache_uri*
  store %struct.cache_uri* %11, %struct.cache_uri** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cache_uri*
  store %struct.cache_uri* %13, %struct.cache_uri** %7, align 8
  %14 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %15 = call float @cache_get_uri_heuristic(%struct.cache_uri* %14)
  store float %15, float* %8, align 4
  %16 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %17 = call float @cache_get_uri_heuristic(%struct.cache_uri* %16)
  store float %17, float* %9, align 4
  %18 = load float, float* %8, align 4
  %19 = load float, float* %9, align 4
  %20 = fcmp ogt float %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load float, float* %8, align 4
  %24 = load float, float* %9, align 4
  %25 = fcmp olt float %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %39

27:                                               ; preds = %22
  %28 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %29 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @uri_off, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %34 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @uri_off, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @strcmp(i64 %32, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %27, %26, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local float @cache_get_uri_heuristic(%struct.cache_uri*) #1

declare dso_local i32 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
