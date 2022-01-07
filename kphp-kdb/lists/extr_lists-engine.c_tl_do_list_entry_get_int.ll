; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_get_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_get_int = type { i32, i64, i32, i32 }

@R = common dso_local global i32* null, align 8
@TL_MAYBE_FALSE = common dso_local global i32 0, align 4
@TL_MAYBE_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_list_entry_get_int(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_list_entry_get_int*, align 8
  %5 = alloca i32, align 4
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %6 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %7 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.tl_list_entry_get_int*
  store %struct.tl_list_entry_get_int* %10, %struct.tl_list_entry_get_int** %4, align 8
  %11 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %4, align 8
  %12 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %4, align 8
  %15 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** @R, align 8
  %18 = call i32 @fetch_list_entry(i32 %13, i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, -2
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %27 = call i32 @tl_store_int(i32 %26)
  store i32 0, i32* %2, align 4
  br label %55

28:                                               ; preds = %22
  %29 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %30 = call i32 @tl_store_int(i32 %29)
  %31 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %4, align 8
  %32 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i32*, i32** @R, align 8
  %37 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %4, align 8
  %38 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = bitcast i32* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @tl_store_long(i64 %43)
  br label %54

45:                                               ; preds = %28
  %46 = load i32*, i32** @R, align 8
  %47 = load %struct.tl_list_entry_get_int*, %struct.tl_list_entry_get_int** %4, align 8
  %48 = getelementptr inbounds %struct.tl_list_entry_get_int, %struct.tl_list_entry_get_int* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @tl_store_int(i32 %52)
  br label %54

54:                                               ; preds = %45, %35
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %25, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @fetch_list_entry(i32, i32, i32*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
