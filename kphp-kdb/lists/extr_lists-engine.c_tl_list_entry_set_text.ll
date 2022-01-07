; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_set_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_set_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i64 }
%struct.tl_list_entry_set_text = type { i64, i32, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_entry_set_text = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4
@max_text_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_entry_set_text() #0 {
  %1 = alloca %struct.tl_act_extra*, align 8
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca %struct.tl_list_entry_set_text*, align 8
  %4 = load i32, i32* @stats_buff, align 4
  %5 = load i32, i32* @tl_do_list_entry_set_text, align 4
  %6 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %4, i32 24, i32 %5)
  store %struct.tl_act_extra* %6, %struct.tl_act_extra** %2, align 8
  %7 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %8 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.tl_list_entry_set_text*
  store %struct.tl_list_entry_set_text* %11, %struct.tl_list_entry_set_text** %3, align 8
  %12 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %13 = load %struct.tl_list_entry_set_text*, %struct.tl_list_entry_set_text** %3, align 8
  %14 = getelementptr inbounds %struct.tl_list_entry_set_text, %struct.tl_list_entry_set_text* %13, i32 0, i32 3
  %15 = call i64 @fetch_list_id(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %49

18:                                               ; preds = %0
  %19 = load %struct.tl_list_entry_set_text*, %struct.tl_list_entry_set_text** %3, align 8
  %20 = getelementptr inbounds %struct.tl_list_entry_set_text, %struct.tl_list_entry_set_text* %19, i32 0, i32 2
  %21 = call i64 @fetch_object_id(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %49

24:                                               ; preds = %18
  %25 = load %struct.tl_list_entry_set_text*, %struct.tl_list_entry_set_text** %3, align 8
  %26 = getelementptr inbounds %struct.tl_list_entry_set_text, %struct.tl_list_entry_set_text* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @max_text_len, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i64 @tl_fetch_string0(i32 %27, i64 %29)
  %31 = load %struct.tl_list_entry_set_text*, %struct.tl_list_entry_set_text** %3, align 8
  %32 = getelementptr inbounds %struct.tl_list_entry_set_text, %struct.tl_list_entry_set_text* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.tl_list_entry_set_text*, %struct.tl_list_entry_set_text** %3, align 8
  %34 = getelementptr inbounds %struct.tl_list_entry_set_text, %struct.tl_list_entry_set_text* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %38 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = call i32 (...) @tl_fetch_end()
  %44 = call i64 (...) @tl_fetch_error()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %24
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %49

47:                                               ; preds = %24
  %48 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  store %struct.tl_act_extra* %48, %struct.tl_act_extra** %1, align 8
  br label %49

49:                                               ; preds = %47, %46, %23, %17
  %50 = load %struct.tl_act_extra*, %struct.tl_act_extra** %1, align 8
  ret %struct.tl_act_extra* %50
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i64 @fetch_object_id(i32*) #1

declare dso_local i64 @tl_fetch_string0(i32, i64) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
