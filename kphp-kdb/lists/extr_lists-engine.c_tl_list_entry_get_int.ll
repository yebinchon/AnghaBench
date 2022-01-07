; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_get_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_get_int = type { i32, i32, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_entry_get_int = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_entry_get_int(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_act_extra*, align 8
  %7 = alloca %struct.tl_list_entry_get_int*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @stats_buff, align 4
  %9 = load i32, i32* @tl_do_list_entry_get_int, align 4
  %10 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %8, i32 16, i32 %9)
  store %struct.tl_act_extra* %10, %struct.tl_act_extra** %6, align 8
  %11 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %12 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.tl_list_entry_get_int*
  store %struct.tl_list_entry_get_int* %15, %struct.tl_list_entry_get_int** %7, align 8
  %16 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %17 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %7, align 8
  %18 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %17, i32 0, i32 3
  %19 = call i64 @fetch_list_id(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %7, align 8
  %24 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %23, i32 0, i32 2
  %25 = call i64 @fetch_object_id(i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %41

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %7, align 8
  %31 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %7, align 8
  %34 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 (...) @tl_fetch_end()
  %36 = call i64 (...) @tl_fetch_error()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %41

39:                                               ; preds = %28
  %40 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  store %struct.tl_act_extra* %40, %struct.tl_act_extra** %3, align 8
  br label %41

41:                                               ; preds = %39, %38, %27, %21
  %42 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  ret %struct.tl_act_extra* %42
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i64 @fetch_object_id(i32*) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
