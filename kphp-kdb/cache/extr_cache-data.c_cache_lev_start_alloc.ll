; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_lev_start_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_lev_start_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i64, i64, i64, i32, i32, i32 }

@LEV_START = common dso_local global i32 0, align 4
@CACHE_SCHEMA_V1 = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lev_start* @cache_lev_start_alloc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lev_start*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  store i32 28, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.lev_start* @calloc(i32 %8, i32 1)
  store %struct.lev_start* %9, %struct.lev_start** %5, align 8
  %10 = load i32, i32* @LEV_START, align 4
  %11 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %12 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @CACHE_SCHEMA_V1, align 4
  %14 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %15 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %17 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %16, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load i64, i64* @log_split_mod, align 8
  %19 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %20 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** @log_split_min, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %24 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load i8*, i8** @log_split_min, align 8
  %26 = getelementptr i8, i8* %25, i64 1
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %29 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %31 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %2
  %35 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %36 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %41 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %45 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %50 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %53 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %51, %54
  br label %56

56:                                               ; preds = %48, %39, %34, %2
  %57 = phi i1 [ false, %39 ], [ false, %34 ], [ false, %2 ], [ %55, %48 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %61 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memcpy(i32 %62, i32* %3, i32 4)
  %64 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  ret %struct.lev_start* %64
}

declare dso_local %struct.lev_start* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
