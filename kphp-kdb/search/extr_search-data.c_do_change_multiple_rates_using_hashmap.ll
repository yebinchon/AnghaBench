; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_change_multiple_rates_using_hashmap.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_change_multiple_rates_using_hashmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.hashmap_int_int = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@Q_order = common dso_local global i64 0, align 8
@IHE = common dso_local global %struct.TYPE_8__* null, align 8
@universal_tag_hash = common dso_local global i32 0, align 4
@change_multiple_rates_set_rate_calls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_multiple_rates_using_hashmap(%struct.hashmap_int_int* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashmap_int_int*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hashmap_int_int* %0, %struct.hashmap_int_int** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* @Q_order, align 8
  %10 = call i32 (...) @clear_res()
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @IHE, align 8
  %12 = load i32, i32* @universal_tag_hash, align 4
  %13 = call i32 @ihe_init(%struct.TYPE_8__* %11, i32 %12, i32 1, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @IHE, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  br label %18

18:                                               ; preds = %61, %16
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %64

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @get_rate_item(%struct.TYPE_9__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %23
  %32 = load %struct.hashmap_int_int*, %struct.hashmap_int_int** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @hashmap_int_int_get(%struct.hashmap_int_int* %32, i32 %33, i32* %7)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.hashmap_int_int*, %struct.hashmap_int_int** %4, align 8
  %38 = getelementptr inbounds %struct.hashmap_int_int, %struct.hashmap_int_int* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %36
  %49 = load i32, i32* @change_multiple_rates_set_rate_calls, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @change_multiple_rates_set_rate_calls, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @do_set_rate_new(i32 %55, i32 %56, i32 %57)
  %59 = call i32 (...) @flushing_binlog_check()
  br label %60

60:                                               ; preds = %48, %36
  br label %61

61:                                               ; preds = %60, %31, %23
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = call i32 @ihe_advance(%struct.TYPE_8__* %62)
  br label %18

64:                                               ; preds = %18
  %65 = call i32 (...) @free_all_list_decoders()
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i32 @ihe_init(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @get_rate_item(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @hashmap_int_int_get(%struct.hashmap_int_int*, i32, i32*) #1

declare dso_local i32 @do_set_rate_new(i32, i32, i32) #1

declare dso_local i32 @flushing_binlog_check(...) #1

declare dso_local i32 @ihe_advance(%struct.TYPE_8__*) #1

declare dso_local i32 @free_all_list_decoders(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
