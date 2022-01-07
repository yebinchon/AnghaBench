; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_intersect_array_rec_intervals.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_intersect_array_rec_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @listree_intersect_array_rec_intervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listree_intersect_array_rec_intervals(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %48

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @get_array(i32* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @LA, align 4
  %24 = call i32 @OARR_ENTRY(i32 %23, i32 0)
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @object_id_compare_prefix(i32 %24, i32 %25)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %10, align 4
  call void @listree_intersect_array_rec_intervals(i32* %29, i32 %30, i32 %32, i32 %33)
  br label %34

34:                                               ; preds = %28, %15
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @report_x(i32 %35)
  %37 = load i32, i32* @LA, align 4
  %38 = call i32 @OARR_ENTRY(i32 %37, i32 0)
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @object_id_compare_prefix(i32 %38, i32 %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  call void @listree_intersect_array_rec_intervals(i32* %43, i32 %45, i32 %46, i32 %47)
  br label %48

48:                                               ; preds = %14, %42, %34
  ret void
}

declare dso_local i32 @get_array(i32*, i32) #1

declare dso_local i64 @object_id_compare_prefix(i32, i32) #1

declare dso_local i32 @OARR_ENTRY(i32, i32) #1

declare dso_local i32 @report_x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
