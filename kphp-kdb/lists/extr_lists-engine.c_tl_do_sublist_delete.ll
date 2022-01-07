; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_sublist_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_sublist_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_sublist_delete = type { i32, i32, i32 }

@TL_BOOL_FALSE = common dso_local global i32 0, align 4
@TL_BOOL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_sublist_delete(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_sublist_delete*, align 8
  %5 = alloca i64, align 8
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %6 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %7 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.tl_sublist_delete*
  store %struct.tl_sublist_delete* %10, %struct.tl_sublist_delete** %4, align 8
  %11 = load %struct.tl_sublist_delete*, %struct.tl_sublist_delete** %4, align 8
  %12 = getelementptr inbounds %struct.tl_sublist_delete, %struct.tl_sublist_delete* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tl_sublist_delete*, %struct.tl_sublist_delete** %4, align 8
  %15 = getelementptr inbounds %struct.tl_sublist_delete, %struct.tl_sublist_delete* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tl_sublist_delete*, %struct.tl_sublist_delete** %4, align 8
  %18 = getelementptr inbounds %struct.tl_sublist_delete, %struct.tl_sublist_delete* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @do_delete_sublist(i32 %13, i32 %16, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, -2
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %34

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @TL_BOOL_FALSE, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @TL_BOOL_TRUE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @tl_store_int(i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @do_delete_sublist(i32, i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
