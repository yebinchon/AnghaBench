; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_init_hash_table.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_init_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }

@tree = common dso_local global i64 0, align 8
@wildcard_cache_tree = common dso_local global i64 0, align 8
@wildcard_use = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TIME_TABLE_SIZE = common dso_local global i32 0, align 4
@time_st = common dso_local global i64* null, align 8
@entry_buffer = common dso_local global %struct.TYPE_5__* null, align 8
@last_del_time = common dso_local global i32 0, align 4
@malloc_mem = common dso_local global i64 0, align 8
@del_by_LRU = common dso_local global i64 0, align 8
@disable_cache = common dso_local global i32 0, align 4
@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@cache = common dso_local global %struct.TYPE_6__* null, align 8
@cache_next = common dso_local global i32* null, align 8
@cache_prev = common dso_local global i32* null, align 8
@cache_stack = common dso_local global i32* null, align 8
@cache_prev_use = common dso_local global i32* null, align 8
@cache_next_use = common dso_local global i32* null, align 8
@cache_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_hash_table() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @tree, align 8
  store i64 0, i64* @wildcard_cache_tree, align 8
  store %struct.TYPE_4__* @wildcard_use, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wildcard_use, i32 0, i32 1), align 8
  store %struct.TYPE_4__* @wildcard_use, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wildcard_use, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %43, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @TIME_TABLE_SIZE, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %46

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64*, i64** @time_st, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64 %8, i64* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry_buffer, align 8
  %14 = load i64*, i64** @time_st, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry_buffer, align 8
  %21 = load i64*, i64** @time_st, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry_buffer, align 8
  %29 = load i64*, i64** @time_st, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry_buffer, align 8
  %36 = load i64*, i64** @time_st, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %42, align 8
  br label %43

43:                                               ; preds = %6
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %2

46:                                               ; preds = %2
  %47 = call i32 (...) @get_double_time_since_epoch()
  %48 = call i32 @GET_TIME_ID(i32 %47)
  store i32 %48, i32* @last_del_time, align 4
  store i64 0, i64* @malloc_mem, align 8
  store i64 0, i64* @del_by_LRU, align 8
  %49 = load i32, i32* @disable_cache, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %105, label %51

51:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %90, %51
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cache, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32*, i32** @cache_next, align 8
  %71 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %77 = load i32, i32* %1, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32*, i32** @cache_prev, align 8
  %80 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* %1, align 4
  %86 = load i32*, i32** @cache_stack, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %56
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  br label %52

93:                                               ; preds = %52
  %94 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %95 = load i32*, i32** @cache_prev_use, align 8
  %96 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %100 = load i32*, i32** @cache_next_use, align 8
  %101 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* @HASH_TABLE_SIZE, align 4
  store i32 %104, i32* @cache_free, align 4
  br label %105

105:                                              ; preds = %93, %46
  %106 = call i32 (...) @init_memory_bounds()
  ret void
}

declare dso_local i32 @GET_TIME_ID(i32) #1

declare dso_local i32 @get_double_time_since_epoch(...) #1

declare dso_local i32 @init_memory_bounds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
