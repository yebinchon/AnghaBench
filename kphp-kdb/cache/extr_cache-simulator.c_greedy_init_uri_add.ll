; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_greedy_init_uri_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_greedy_init_uri_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.lev_cache_uri = type { i32 }
%struct.cache_uri = type { i8* }

@cached_bytes = common dso_local global i64 0, align 8
@simulation_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@simulation_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @greedy_init_uri_add(%struct.lev_cache_uri* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_cache_uri*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca i64, align 8
  store %struct.lev_cache_uri* %0, %struct.lev_cache_uri** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %9 = load %struct.lev_cache_uri*, %struct.lev_cache_uri** %3, align 8
  %10 = getelementptr inbounds %struct.lev_cache_uri, %struct.lev_cache_uri* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @memcpy(i8* %8, i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %15
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %18 = call %struct.cache_uri* @get_uri_f(i8* %17, i32 0)
  store %struct.cache_uri* %18, %struct.cache_uri** %6, align 8
  %19 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %20 = call i32 @assert(%struct.cache_uri* %19)
  %21 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %22 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %27 = call i64 @cache_get_uri_size(%struct.cache_uri* %26, i32 1)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @cached_bytes, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @simulation_params, i32 0, i32 0), align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %35 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @cached_bytes, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* @cached_bytes, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 1), align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 1), align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 0), align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @simulation_stats, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %33, %25
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @assert(%struct.cache_uri*) #1

declare dso_local i64 @cache_get_uri_size(%struct.cache_uri*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
