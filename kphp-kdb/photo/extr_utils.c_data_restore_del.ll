; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore_del.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@_prev_id = common dso_local global i32* null, align 8
@_found = common dso_local global i32 0, align 4
@_needed_id = common dso_local global i32 0, align 4
@search_for_id = common dso_local global i32 0, align 4
@_found_a = common dso_local global %struct.TYPE_8__* null, align 8
@_found_b = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_restore_del(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  store i32* %9, i32** @_prev_id, align 8
  store i32 -1, i32* @_found, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* @_needed_id, align 4
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** @_prev_id, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* @search_for_id, align 4
  %15 = call i32 @map_int_vptr_foreach(i32* %13, i32 %14)
  %16 = load i32, i32* @_found, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_found_a, align 8
  %20 = call i64 @restore_list_is_empty(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_found_a, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_found_a, align 8
  %27 = call i32 @restore_list_free(%struct.TYPE_8__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @map_int_vptr_del(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %18
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_found_b, align 8
  %34 = call i64 @restore_list_is_empty(%struct.TYPE_8__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_found_b, align 8
  %38 = call i32 @restore_list_free(%struct.TYPE_8__* %37)
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_found_b, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_found_b, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @map_int_vptr_add(i32* %45, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_8__**
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %48, align 8
  br label %49

49:                                               ; preds = %39, %36
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32, i32* @_found, align 4
  ret i32 %51
}

declare dso_local i32 @map_int_vptr_foreach(i32*, i32) #1

declare dso_local i64 @restore_list_is_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @restore_list_free(%struct.TYPE_8__*) #1

declare dso_local i32 @map_int_vptr_del(i32*, i32) #1

declare dso_local i64 @map_int_vptr_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
