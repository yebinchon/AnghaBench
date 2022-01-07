; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_count = type { i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_sublists_count = common dso_local global i32 0, align 4
@tl_do_list_count = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_count(i32 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_act_extra*, align 8
  %5 = alloca %struct.tl_list_count*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @tl_do_sublists_count, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @tl_do_list_count, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %6, i32 8, i32 %14)
  store %struct.tl_act_extra* %15, %struct.tl_act_extra** %4, align 8
  %16 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  %17 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.tl_list_count*
  store %struct.tl_list_count* %20, %struct.tl_list_count** %5, align 8
  %21 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %22 = load %struct.tl_list_count*, %struct.tl_list_count** %5, align 8
  %23 = getelementptr inbounds %struct.tl_list_count, %struct.tl_list_count* %22, i32 0, i32 1
  %24 = call i64 @fetch_list_id(i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %44

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 (...) @tl_fetch_int()
  %32 = load %struct.tl_list_count*, %struct.tl_list_count** %5, align 8
  %33 = getelementptr inbounds %struct.tl_list_count, %struct.tl_list_count* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.tl_list_count*, %struct.tl_list_count** %5, align 8
  %36 = getelementptr inbounds %struct.tl_list_count, %struct.tl_list_count* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i32 (...) @tl_fetch_end()
  %39 = call i64 (...) @tl_fetch_error()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %44

42:                                               ; preds = %37
  %43 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  store %struct.tl_act_extra* %43, %struct.tl_act_extra** %2, align 8
  br label %44

44:                                               ; preds = %42, %41, %26
  %45 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %45
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
