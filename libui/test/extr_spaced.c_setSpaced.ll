; ModuleID = '/home/carl/AnghaBench/libui/test/extr_spaced.c_setSpaced.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_spaced.c_setSpaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@len = common dso_local global i64 0, align 8
@things = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setSpaced(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %66, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @len, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @things, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @things, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %65 [
    i32 128, label %22
    i32 133, label %27
    i32 129, label %32
    i32 130, label %50
    i32 132, label %55
    i32 131, label %60
  ]

22:                                               ; preds = %11
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @uiWindow(i8* %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @uiWindowSetMargined(i32 %24, i32 %25)
  br label %65

27:                                               ; preds = %11
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @uiBox(i8* %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @uiBoxSetPadded(i32 %29, i32 %30)
  br label %65

32:                                               ; preds = %11
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @uiTab(i8* %33)
  %35 = call i64 @uiTabNumPages(i32 %34)
  store i64 %35, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %46, %32
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @uiTab(i8* %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @uiTabSetMargined(i32 %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %36

49:                                               ; preds = %36
  br label %65

50:                                               ; preds = %11
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @uiGroup(i8* %51)
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @uiGroupSetMargined(i32 %52, i32 %53)
  br label %65

55:                                               ; preds = %11
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @uiForm(i8* %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @uiFormSetPadded(i32 %57, i32 %58)
  br label %65

60:                                               ; preds = %11
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @uiGrid(i8* %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @uiGridSetPadded(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %11, %60, %55, %50, %49, %27, %22
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %7

69:                                               ; preds = %7
  ret void
}

declare dso_local i32 @uiWindowSetMargined(i32, i32) #1

declare dso_local i32 @uiWindow(i8*) #1

declare dso_local i32 @uiBoxSetPadded(i32, i32) #1

declare dso_local i32 @uiBox(i8*) #1

declare dso_local i64 @uiTabNumPages(i32) #1

declare dso_local i32 @uiTab(i8*) #1

declare dso_local i32 @uiTabSetMargined(i32, i64, i32) #1

declare dso_local i32 @uiGroupSetMargined(i32, i32) #1

declare dso_local i32 @uiGroup(i8*) #1

declare dso_local i32 @uiFormSetPadded(i32, i32) #1

declare dso_local i32 @uiForm(i8*) #1

declare dso_local i32 @uiGridSetPadded(i32, i32) #1

declare dso_local i32 @uiGrid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
