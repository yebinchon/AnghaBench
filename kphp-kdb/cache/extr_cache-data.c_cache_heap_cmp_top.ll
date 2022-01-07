; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_heap_cmp_top.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_heap_cmp_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { i64 }

@heap_acounter_off = common dso_local global i64 0, align 8
@uri_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cache_heap_cmp_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_heap_cmp_top(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cache_uri*, align 8
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca %struct.amortization_counter*, align 8
  %8 = alloca %struct.amortization_counter*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cache_uri*
  store %struct.cache_uri* %10, %struct.cache_uri** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.cache_uri*
  store %struct.cache_uri* %12, %struct.cache_uri** %6, align 8
  %13 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %14 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @heap_acounter_off, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = bitcast i32* %17 to %struct.amortization_counter*
  store %struct.amortization_counter* %18, %struct.amortization_counter** %7, align 8
  %19 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %20 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @heap_acounter_off, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = bitcast i32* %23 to %struct.amortization_counter*
  store %struct.amortization_counter* %24, %struct.amortization_counter** %8, align 8
  %25 = load %struct.amortization_counter*, %struct.amortization_counter** %7, align 8
  %26 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.amortization_counter*, %struct.amortization_counter** %8, align 8
  %29 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %62

33:                                               ; preds = %2
  %34 = load %struct.amortization_counter*, %struct.amortization_counter** %7, align 8
  %35 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.amortization_counter*, %struct.amortization_counter** %8, align 8
  %38 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %60

45:                                               ; preds = %33
  %46 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %47 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @uri_off, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %53 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @uri_off, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @strcmp(i32* %51, i32* %57)
  %59 = sub nsw i32 0, %58
  br label %60

60:                                               ; preds = %45, %44
  %61 = phi i32 [ 1, %44 ], [ %59, %45 ]
  br label %62

62:                                               ; preds = %60, %32
  %63 = phi i32 [ -1, %32 ], [ %61, %60 ]
  ret i32 %63
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
