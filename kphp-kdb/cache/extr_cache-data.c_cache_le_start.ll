; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i32, i64, i64, i64, i32 }

@CACHE_SCHEMA_V1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"LEV_START schema_id isn't to CACHE_SCHEMA_V1.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"LEV_START extra_bytes isn't equal to 4.\0A\00", align 1
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@cache_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %4 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %5 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CACHE_SCHEMA_V1, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @kprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %13 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @kprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

18:                                               ; preds = %11
  %19 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %20 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* @log_split_min, align 8
  %22 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %23 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* @log_split_max, align 8
  %25 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %26 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* @log_split_mod, align 8
  %28 = load i64, i64* @log_split_mod, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %18
  %31 = load i64, i64* @log_split_min, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i64, i64* @log_split_min, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* @log_split_max, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* @log_split_max, align 8
  %40 = load i64, i64* @log_split_mod, align 8
  %41 = icmp sle i64 %39, %40
  br label %42

42:                                               ; preds = %38, %33, %30, %18
  %43 = phi i1 [ false, %33 ], [ false, %30 ], [ false, %18 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %47 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i32* @cache_id, i32 %48, i32 4)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %16, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
