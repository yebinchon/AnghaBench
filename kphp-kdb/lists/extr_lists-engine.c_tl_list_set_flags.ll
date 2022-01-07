; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_set_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_set_flags = type { i32, i32, i32, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_set_flags = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_set_flags(i32 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_act_extra*, align 8
  %5 = alloca %struct.tl_list_set_flags*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32, i32* @tl_do_list_set_flags, align 4
  %8 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %6, i32 20, i32 %7)
  store %struct.tl_act_extra* %8, %struct.tl_act_extra** %4, align 8
  %9 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  %10 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.tl_list_set_flags*
  store %struct.tl_list_set_flags* %13, %struct.tl_list_set_flags** %5, align 8
  %14 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %15 = load %struct.tl_list_set_flags*, %struct.tl_list_set_flags** %5, align 8
  %16 = getelementptr inbounds %struct.tl_list_set_flags, %struct.tl_list_set_flags* %15, i32 0, i32 4
  %17 = call i64 @fetch_list_id(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %51

20:                                               ; preds = %1
  %21 = call i32 (...) @tl_fetch_int()
  %22 = load %struct.tl_list_set_flags*, %struct.tl_list_set_flags** %5, align 8
  %23 = getelementptr inbounds %struct.tl_list_set_flags, %struct.tl_list_set_flags* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @tl_fetch_int()
  br label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 7, %28 ]
  %31 = load %struct.tl_list_set_flags*, %struct.tl_list_set_flags** %5, align 8
  %32 = getelementptr inbounds %struct.tl_list_set_flags, %struct.tl_list_set_flags* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = call i32 (...) @tl_fetch_int()
  %34 = load %struct.tl_list_set_flags*, %struct.tl_list_set_flags** %5, align 8
  %35 = getelementptr inbounds %struct.tl_list_set_flags, %struct.tl_list_set_flags* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (...) @tl_fetch_int()
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ -1, %40 ]
  %43 = load %struct.tl_list_set_flags*, %struct.tl_list_set_flags** %5, align 8
  %44 = getelementptr inbounds %struct.tl_list_set_flags, %struct.tl_list_set_flags* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = call i32 (...) @tl_fetch_end()
  %46 = call i64 (...) @tl_fetch_error()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %51

49:                                               ; preds = %41
  %50 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  store %struct.tl_act_extra* %50, %struct.tl_act_extra** %2, align 8
  br label %51

51:                                               ; preds = %49, %48, %19
  %52 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %52
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
