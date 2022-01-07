; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_load_local.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_load_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.hash_entry = type { i32 }
%struct.index_entry = type { i32 }

@disable_cache = common dso_local global i64 0, align 8
@current_cache = common dso_local global %struct.TYPE_9__* null, align 8
@cache_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_load_local(i8* %0, i32 %1, %struct.hash_entry* %2, %struct.index_entry* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_entry*, align 8
  %8 = alloca %struct.index_entry*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hash_entry* %2, %struct.hash_entry** %7, align 8
  store %struct.index_entry* %3, %struct.index_entry** %8, align 8
  %10 = load i64, i64* @disable_cache, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_9__* @get_cache_item_simple(i8* %13, i32 %14)
  br label %20

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.TYPE_9__* @get_cache_item(i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi %struct.TYPE_9__* [ %15, %12 ], [ %19, %16 ]
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** @current_cache, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %23 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %24 = load %struct.index_entry*, %struct.index_entry** %8, align 8
  %25 = call i32 @cache_reload_local(%struct.TYPE_9__* %22, %struct.hash_entry* %23, %struct.index_entry* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -2
  br i1 %30, label %31, label %75

31:                                               ; preds = %20
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %33 = load %struct.index_entry*, %struct.index_entry** %8, align 8
  %34 = call i32 @cache_assign_index_entry_local(%struct.TYPE_9__* %32, %struct.index_entry* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -2
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = call i32 @del_entry(%struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %46
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @pmemcached_incr_current(i64 %71)
  br label %73

73:                                               ; preds = %70, %46
  br label %74

74:                                               ; preds = %73, %39, %31
  br label %75

75:                                               ; preds = %74, %20
  %76 = load i32, i32* @cache_ok, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @cache_ok, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_cache, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, -1
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 0, i32 1
  ret i32 %84
}

declare dso_local %struct.TYPE_9__* @get_cache_item_simple(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @get_cache_item(i8*, i32) #1

declare dso_local i32 @cache_reload_local(%struct.TYPE_9__*, %struct.hash_entry*, %struct.index_entry*) #1

declare dso_local i32 @cache_assign_index_entry_local(%struct.TYPE_9__*, %struct.index_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @del_entry(%struct.TYPE_10__*) #1

declare dso_local i32 @pmemcached_incr_current(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
