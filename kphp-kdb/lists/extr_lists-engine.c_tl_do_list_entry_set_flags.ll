; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_set_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_set_flags = type { i32, i32, i32, i32 }

@TL_BOOL_FALSE = common dso_local global i32 0, align 4
@TL_BOOL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_list_entry_set_flags(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_list_entry_set_flags*, align 8
  %5 = alloca i32, align 4
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %6 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %7 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.tl_list_entry_set_flags*
  store %struct.tl_list_entry_set_flags* %10, %struct.tl_list_entry_set_flags** %4, align 8
  %11 = load %struct.tl_list_entry_set_flags*, %struct.tl_list_entry_set_flags** %4, align 8
  %12 = getelementptr inbounds %struct.tl_list_entry_set_flags, %struct.tl_list_entry_set_flags* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tl_list_entry_set_flags*, %struct.tl_list_entry_set_flags** %4, align 8
  %15 = getelementptr inbounds %struct.tl_list_entry_set_flags, %struct.tl_list_entry_set_flags* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tl_list_entry_set_flags*, %struct.tl_list_entry_set_flags** %4, align 8
  %18 = getelementptr inbounds %struct.tl_list_entry_set_flags, %struct.tl_list_entry_set_flags* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tl_list_entry_set_flags*, %struct.tl_list_entry_set_flags** %4, align 8
  %21 = getelementptr inbounds %struct.tl_list_entry_set_flags, %struct.tl_list_entry_set_flags* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @do_change_entry_flags(i32 %13, i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -2
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %37

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @TL_BOOL_FALSE, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TL_BOOL_TRUE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @tl_store_int(i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @do_change_entry_flags(i32, i32, i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
