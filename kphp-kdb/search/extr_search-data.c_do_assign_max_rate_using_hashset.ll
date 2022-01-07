; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_assign_max_rate_using_hashset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_assign_max_rate_using_hashset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.hashset_ll = type { i32 }

@Q_order = common dso_local global i64 0, align 8
@IHE = common dso_local global %struct.TYPE_7__* null, align 8
@universal_tag_hash = common dso_local global i32 0, align 4
@assign_max_set_rate_calls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_assign_max_rate_using_hashset(%struct.hashset_ll* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashset_ll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hashset_ll* %0, %struct.hashset_ll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* @Q_order, align 8
  %11 = call i32 (...) @clear_res()
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @IHE, align 8
  %13 = load i32, i32* @universal_tag_hash, align 4
  %14 = call i32 @ihe_init(%struct.TYPE_7__* %12, i32 %13, i32 1, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @IHE, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  br label %19

19:                                               ; preds = %58, %17
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = call i64 @get_hash_item(%struct.TYPE_8__* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %24
  %32 = load %struct.hashset_ll*, %struct.hashset_ll** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @hashset_ll_get(%struct.hashset_ll* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @get_rate_item(%struct.TYPE_8__* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load i32, i32* @assign_max_set_rate_calls, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @assign_max_set_rate_calls, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @do_set_rate_new(i32 %52, i32 %53, i32 %54)
  %56 = call i32 (...) @flushing_binlog_check()
  br label %57

57:                                               ; preds = %45, %36
  br label %58

58:                                               ; preds = %57, %31, %24
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = call i32 @ihe_advance(%struct.TYPE_7__* %59)
  br label %19

61:                                               ; preds = %19
  %62 = call i32 (...) @free_all_list_decoders()
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i32 @ihe_init(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @get_hash_item(%struct.TYPE_8__*) #1

declare dso_local i64 @hashset_ll_get(%struct.hashset_ll*, i64) #1

declare dso_local i32 @get_rate_item(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @do_set_rate_new(i32, i32, i32) #1

declare dso_local i32 @flushing_binlog_check(...) #1

declare dso_local i32 @ihe_advance(%struct.TYPE_7__*) #1

declare dso_local i32 @free_all_list_decoders(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
