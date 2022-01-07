; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_set_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_set_value = type { i32, i32, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_entry_set_value = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_entry_set_value(i32 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_act_extra*, align 8
  %5 = alloca %struct.tl_list_entry_set_value*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32, i32* @tl_do_list_entry_set_value, align 4
  %8 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %6, i32 16, i32 %7)
  store %struct.tl_act_extra* %8, %struct.tl_act_extra** %4, align 8
  %9 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  %10 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.tl_list_entry_set_value*
  store %struct.tl_list_entry_set_value* %13, %struct.tl_list_entry_set_value** %5, align 8
  %14 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %15 = load %struct.tl_list_entry_set_value*, %struct.tl_list_entry_set_value** %5, align 8
  %16 = getelementptr inbounds %struct.tl_list_entry_set_value, %struct.tl_list_entry_set_value* %15, i32 0, i32 3
  %17 = call i64 @fetch_list_id(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.tl_list_entry_set_value*, %struct.tl_list_entry_set_value** %5, align 8
  %22 = getelementptr inbounds %struct.tl_list_entry_set_value, %struct.tl_list_entry_set_value* %21, i32 0, i32 2
  %23 = call i64 @fetch_object_id(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %49

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.tl_list_entry_set_value*, %struct.tl_list_entry_set_value** %5, align 8
  %31 = getelementptr inbounds %struct.tl_list_entry_set_value, %struct.tl_list_entry_set_value* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = call i32 (...) @tl_fetch_long()
  %36 = sub nsw i32 0, %35
  br label %39

37:                                               ; preds = %26
  %38 = call i32 (...) @tl_fetch_long()
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = load %struct.tl_list_entry_set_value*, %struct.tl_list_entry_set_value** %5, align 8
  %42 = getelementptr inbounds %struct.tl_list_entry_set_value, %struct.tl_list_entry_set_value* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = call i32 (...) @tl_fetch_end()
  %44 = call i64 (...) @tl_fetch_error()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %49

47:                                               ; preds = %39
  %48 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  store %struct.tl_act_extra* %48, %struct.tl_act_extra** %2, align 8
  br label %49

49:                                               ; preds = %47, %46, %25, %19
  %50 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %50
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i64 @fetch_object_id(i32*) #1

declare dso_local i32 @tl_fetch_long(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
