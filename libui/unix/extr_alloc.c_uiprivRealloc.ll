; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_alloc.c_uiprivRealloc.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_alloc.c_uiprivRealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTRA = common dso_local global i64 0, align 8
@allocations = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%p not found in allocations array in uiprivRealloc()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uiprivRealloc(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @uiprivAlloc(i64 %13, i8* %14)
  store i8* %15, i8** %4, align 8
  br label %59

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @BASE(i8* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* @EXTRA, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = call i8* @g_realloc(i8* %19, i64 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64* @SIZE(i8* %24)
  store i64* %25, i64** %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %16
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @DATA(i8* %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %37, %39
  %41 = call i32 @memset(i32* %36, i32 0, i64 %40)
  br label %42

42:                                               ; preds = %30, %16
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @allocations, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @g_ptr_array_remove(i32 %45, i8* %46)
  %48 = load i64, i64* @FALSE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @uiprivImplBug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* @allocations, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @g_ptr_array_add(i32 %54, i8* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @DATA(i8* %57)
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %53, %12
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i8* @uiprivAlloc(i64, i8*) #1

declare dso_local i8* @BASE(i8*) #1

declare dso_local i8* @g_realloc(i8*, i64) #1

declare dso_local i64* @SIZE(i8*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i8* @DATA(i8*) #1

declare dso_local i64 @g_ptr_array_remove(i32, i8*) #1

declare dso_local i32 @uiprivImplBug(i8*, i8*) #1

declare dso_local i32 @g_ptr_array_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
