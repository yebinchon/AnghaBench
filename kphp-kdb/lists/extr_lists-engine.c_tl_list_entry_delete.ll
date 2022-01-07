; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_delete = type { i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_entry_delete = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_entry_delete() #0 {
  %1 = alloca %struct.tl_act_extra*, align 8
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca %struct.tl_list_entry_delete*, align 8
  %4 = load i32, i32* @stats_buff, align 4
  %5 = load i32, i32* @tl_do_list_entry_delete, align 4
  %6 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %4, i32 8, i32 %5)
  store %struct.tl_act_extra* %6, %struct.tl_act_extra** %2, align 8
  %7 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %8 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.tl_list_entry_delete*
  store %struct.tl_list_entry_delete* %11, %struct.tl_list_entry_delete** %3, align 8
  %12 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %13 = load %struct.tl_list_entry_delete*, %struct.tl_list_entry_delete** %3, align 8
  %14 = getelementptr inbounds %struct.tl_list_entry_delete, %struct.tl_list_entry_delete* %13, i32 0, i32 1
  %15 = call i64 @fetch_list_id(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %31

18:                                               ; preds = %0
  %19 = load %struct.tl_list_entry_delete*, %struct.tl_list_entry_delete** %3, align 8
  %20 = getelementptr inbounds %struct.tl_list_entry_delete, %struct.tl_list_entry_delete* %19, i32 0, i32 0
  %21 = call i64 @fetch_object_id(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %31

24:                                               ; preds = %18
  %25 = call i32 (...) @tl_fetch_end()
  %26 = call i64 (...) @tl_fetch_error()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %31

29:                                               ; preds = %24
  %30 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  store %struct.tl_act_extra* %30, %struct.tl_act_extra** %1, align 8
  br label %31

31:                                               ; preds = %29, %28, %23, %17
  %32 = load %struct.tl_act_extra*, %struct.tl_act_extra** %1, align 8
  ret %struct.tl_act_extra* %32
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
