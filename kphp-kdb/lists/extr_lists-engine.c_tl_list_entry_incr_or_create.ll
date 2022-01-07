; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_incr_or_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_incr_or_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_incr_or_create = type { i32, i32, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_entry_incr_or_create = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_entry_incr_or_create(i32 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_act_extra*, align 8
  %5 = alloca %struct.tl_list_entry_incr_or_create*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32, i32* @tl_do_list_entry_incr_or_create, align 4
  %8 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %6, i32 16, i32 %7)
  store %struct.tl_act_extra* %8, %struct.tl_act_extra** %4, align 8
  %9 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  %10 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.tl_list_entry_incr_or_create*
  store %struct.tl_list_entry_incr_or_create* %13, %struct.tl_list_entry_incr_or_create** %5, align 8
  %14 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %15 = load %struct.tl_list_entry_incr_or_create*, %struct.tl_list_entry_incr_or_create** %5, align 8
  %16 = getelementptr inbounds %struct.tl_list_entry_incr_or_create, %struct.tl_list_entry_incr_or_create* %15, i32 0, i32 3
  %17 = call i64 @fetch_list_id(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.tl_list_entry_incr_or_create*, %struct.tl_list_entry_incr_or_create** %5, align 8
  %22 = getelementptr inbounds %struct.tl_list_entry_incr_or_create, %struct.tl_list_entry_incr_or_create* %21, i32 0, i32 2
  %23 = call i64 @fetch_object_id(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %47

26:                                               ; preds = %20
  %27 = call i32 (...) @tl_fetch_int()
  %28 = load %struct.tl_list_entry_incr_or_create*, %struct.tl_list_entry_incr_or_create** %5, align 8
  %29 = getelementptr inbounds %struct.tl_list_entry_incr_or_create, %struct.tl_list_entry_incr_or_create* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 (...) @tl_fetch_long()
  %34 = sub nsw i32 0, %33
  br label %37

35:                                               ; preds = %26
  %36 = call i32 (...) @tl_fetch_long()
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  %39 = load %struct.tl_list_entry_incr_or_create*, %struct.tl_list_entry_incr_or_create** %5, align 8
  %40 = getelementptr inbounds %struct.tl_list_entry_incr_or_create, %struct.tl_list_entry_incr_or_create* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = call i32 (...) @tl_fetch_end()
  %42 = call i64 (...) @tl_fetch_error()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  store %struct.tl_act_extra* %46, %struct.tl_act_extra** %2, align 8
  br label %47

47:                                               ; preds = %45, %44, %25, %19
  %48 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %48
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i64 @fetch_object_id(i32*) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_long(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
