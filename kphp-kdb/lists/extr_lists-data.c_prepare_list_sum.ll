; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_sum.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@id_ints = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i32 0, align 4
@list_sum_x = common dso_local global i32 0, align 4
@report_x = common dso_local global i32 0, align 4
@Sum = common dso_local global i64 0, align 8
@list_sum_x_prefix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prepare_list_sum(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  store i32 %16, i32* @id_ints, align 4
  %17 = load i32, i32* @id_ints, align 4
  %18 = load i32, i32* @object_id_ints, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %6
  %21 = load i32, i32* @list_sum_x, align 4
  store i32 %21, i32* @report_x, align 4
  store i64 0, i64* @Sum, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @__prepare_list_intersection(i32 %22, i32 %23, i32* %24, i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  br label %35

33:                                               ; preds = %20
  %34 = load i64, i64* @Sum, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i64 [ %32, %30 ], [ %34, %33 ]
  store i64 %36, i64* %7, align 8
  br label %54

37:                                               ; preds = %6
  %38 = load i32, i32* @list_sum_x_prefix, align 4
  store i32 %38, i32* @report_x, align 4
  store i64 0, i64* @Sum, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @__prepare_list_intersection_intervals(i32 %39, i32 %40, i32* %41, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  br label %52

50:                                               ; preds = %37
  %51 = load i64, i64* @Sum, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i64 [ %49, %47 ], [ %51, %50 ]
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i32 @__prepare_list_intersection(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @__prepare_list_intersection_intervals(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
