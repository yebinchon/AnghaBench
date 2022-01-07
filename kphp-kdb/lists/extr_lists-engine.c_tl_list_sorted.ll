; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_sorted.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_sorted = type { i8*, i8*, i8*, i8*, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_sorted_full = common dso_local global i32 0, align 4
@tl_do_list_sorted = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_sorted(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_act_extra*, align 8
  %7 = alloca %struct.tl_list_sorted*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @stats_buff, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @tl_do_list_sorted_full, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @tl_do_list_sorted, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %8, i32 40, i32 %16)
  store %struct.tl_act_extra* %17, %struct.tl_act_extra** %6, align 8
  %18 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %19 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.tl_list_sorted*
  store %struct.tl_list_sorted* %22, %struct.tl_list_sorted** %7, align 8
  %23 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %24 = load %struct.tl_list_sorted*, %struct.tl_list_sorted** %7, align 8
  %25 = getelementptr inbounds %struct.tl_list_sorted, %struct.tl_list_sorted* %24, i32 0, i32 4
  %26 = call i64 @fetch_list_id(i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %55

29:                                               ; preds = %15
  %30 = call i8* (...) @tl_fetch_int()
  %31 = load %struct.tl_list_sorted*, %struct.tl_list_sorted** %7, align 8
  %32 = getelementptr inbounds %struct.tl_list_sorted, %struct.tl_list_sorted* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = call i8* (...) @tl_fetch_int()
  %34 = load %struct.tl_list_sorted*, %struct.tl_list_sorted** %7, align 8
  %35 = getelementptr inbounds %struct.tl_list_sorted, %struct.tl_list_sorted* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = call i8* (...) @tl_fetch_int()
  %37 = load %struct.tl_list_sorted*, %struct.tl_list_sorted** %7, align 8
  %38 = getelementptr inbounds %struct.tl_list_sorted, %struct.tl_list_sorted* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = call i8* (...) @tl_fetch_int()
  br label %45

43:                                               ; preds = %29
  %44 = load i8*, i8** @MAX_RES, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8* [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.tl_list_sorted*, %struct.tl_list_sorted** %7, align 8
  %48 = getelementptr inbounds %struct.tl_list_sorted, %struct.tl_list_sorted* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = call i32 (...) @tl_fetch_end()
  %50 = call i64 (...) @tl_fetch_error()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %55

53:                                               ; preds = %45
  %54 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  store %struct.tl_act_extra* %54, %struct.tl_act_extra** %3, align 8
  br label %55

55:                                               ; preds = %53, %52, %28
  %56 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  ret %struct.tl_act_extra* %56
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i8* @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
