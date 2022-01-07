; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_garbage_collector_step.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_garbage_collector_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cache_uri = type { i32, i32*, %struct.cache_uri*, i64 }

@log_last_ts = common dso_local global i32 0, align 4
@uri_living_time = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"log_last_ts: %d, dead_time: %d\0A\00", align 1
@uncommited_delete_logevents_bytes = common dso_local global i64 0, align 8
@garbage_collector = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@H = common dso_local global %struct.cache_uri** null, align 8
@uri_off = common dso_local global i64 0, align 8
@uri_hash_prime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_garbage_collector_step(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_uri**, align 8
  %8 = alloca %struct.cache_uri*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @log_last_ts, align 4
  %10 = load i32, i32* @uri_living_time, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @log_last_ts, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  store i64 0, i64* @uncommited_delete_logevents_bytes, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @garbage_collector, i32 0, i32 0), align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %78, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %79

26:                                               ; preds = %24
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.cache_uri**, %struct.cache_uri*** @H, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %29, i64 %31
  store %struct.cache_uri** %32, %struct.cache_uri*** %7, align 8
  br label %33

33:                                               ; preds = %68, %26
  %34 = load %struct.cache_uri**, %struct.cache_uri*** %7, align 8
  %35 = load %struct.cache_uri*, %struct.cache_uri** %34, align 8
  store %struct.cache_uri* %35, %struct.cache_uri** %8, align 8
  %36 = icmp ne %struct.cache_uri* %35, null
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %41 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %46 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %37
  %51 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %52 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %51, i32 0, i32 2
  store %struct.cache_uri** %52, %struct.cache_uri*** %7, align 8
  br label %68

53:                                               ; preds = %44
  %54 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %55 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %54, i32 0, i32 2
  %56 = load %struct.cache_uri*, %struct.cache_uri** %55, align 8
  %57 = load %struct.cache_uri**, %struct.cache_uri*** %7, align 8
  store %struct.cache_uri* %56, %struct.cache_uri** %57, align 8
  %58 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %59 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @uri_off, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @uri_cache_remove(i32* %62)
  %64 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %65 = call i32 @cache_uri_do_delete(%struct.cache_uri* %64)
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %53, %50
  br label %33

69:                                               ; preds = %33
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @uri_hash_prime, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @uri_hash_prime, align 4
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %69
  br label %16

79:                                               ; preds = %24
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @garbage_collector, i32 0, i32 0), align 4
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @uri_cache_remove(i32*) #1

declare dso_local i32 @cache_uri_do_delete(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
