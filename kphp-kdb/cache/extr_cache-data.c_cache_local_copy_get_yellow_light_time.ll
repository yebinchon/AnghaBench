; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_get_yellow_light_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_get_yellow_light_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i32, i64 }

@CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_local_copy_get_yellow_light_time(%struct.cache_local_copy* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.cache_local_copy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.cache_local_copy* %0, %struct.cache_local_copy** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %11 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %19 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i64, i64* @log_last_ts, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %3
  br label %40

27:                                               ; preds = %17
  %28 = load i64, i64* @log_last_ts, align 8
  %29 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %30 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %35, %37
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %27, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
