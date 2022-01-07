; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_commons.c_init_modules.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_commons.c_init_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOTAL_MODULES = common dso_local global i64 0, align 8
@module_list = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_modules() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @TOTAL_MODULES, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32*, i32** @module_list, align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 -1, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %1, align 8
  br label %3

14:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  store i64 0, i64* %1, align 8
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @TOTAL_MODULES, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @ignore_panel(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %1, align 8
  %25 = call i64 @enable_panel(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %1, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** @module_list, align 8
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %23
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %1, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %1, align 8
  br label %15

39:                                               ; preds = %15
  %40 = load i32*, i32** @module_list, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** @module_list, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ]
  ret i32 %50
}

declare dso_local i32 @ignore_panel(i64) #1

declare dso_local i64 @enable_panel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
