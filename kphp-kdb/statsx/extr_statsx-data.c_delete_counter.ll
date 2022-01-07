; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_delete_counter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_delete_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_delete_counter = type { i64 }
%struct.lev_delete_counter64 = type { i64 }

@LEV_STATS_DELETE_COUNTER = common dso_local global i32 0, align 4
@LEV_STATS_DELETE_COUNTER_64 = common dso_local global i32 0, align 4
@index_size = common dso_local global i32 0, align 4
@index_deleted = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_counter(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lev_delete_counter*, align 8
  %6 = alloca %struct.lev_delete_counter64*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = trunc i64 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load i32, i32* @LEV_STATS_DELETE_COUNTER, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i8* @alloc_log_event(i32 %17, i32 8, i64 %18)
  %20 = bitcast i8* %19 to %struct.lev_delete_counter*
  store %struct.lev_delete_counter* %20, %struct.lev_delete_counter** %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.lev_delete_counter*, %struct.lev_delete_counter** %5, align 8
  %23 = getelementptr inbounds %struct.lev_delete_counter, %struct.lev_delete_counter* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %32

24:                                               ; preds = %10
  %25 = load i32, i32* @LEV_STATS_DELETE_COUNTER_64, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i8* @alloc_log_event(i32 %25, i32 8, i64 %26)
  %28 = bitcast i8* %27 to %struct.lev_delete_counter64*
  store %struct.lev_delete_counter64* %28, %struct.lev_delete_counter64** %6, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.lev_delete_counter64*, %struct.lev_delete_counter64** %6, align 8
  %31 = getelementptr inbounds %struct.lev_delete_counter64, %struct.lev_delete_counter64* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %24, %16
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @get_counter_f(i64 %34, i32 -1)
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @index_get_idx(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @index_size, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i32*, i32** @index_deleted, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %33
  ret i32 1
}

declare dso_local i8* @alloc_log_event(i32, i32, i64) #1

declare dso_local i32 @get_counter_f(i64, i32) #1

declare dso_local i32 @index_get_idx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
