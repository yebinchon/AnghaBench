; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_subtraction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_subtraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@id_ints = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i32 0, align 4
@list_subtract_x = common dso_local global i32 0, align 4
@report_x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_list_subtraction(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @id_ints, align 4
  %15 = load i32, i32* @id_ints, align 4
  %16 = load i32, i32* @object_id_ints, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = load i32, i32* @list_subtract_x, align 4
  store i32 %19, i32* @report_x, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @__prepare_list_intersection(i32 %20, i32 %21, i32* %22, i32 %23, i32 1, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @__prepare_list_intersection(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
