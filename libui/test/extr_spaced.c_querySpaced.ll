; ModuleID = '/home/carl/AnghaBench/libui/test/extr_spaced.c_querySpaced.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_spaced.c_querySpaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@len = common dso_local global i64 0, align 8
@things = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @querySpaced(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %69, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @len, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %72

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @things, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @things, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %68 [
    i32 128, label %24
    i32 131, label %33
    i32 129, label %37
    i32 130, label %59
  ]

24:                                               ; preds = %13
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @uiWindow(i8* %25)
  %27 = call i32 @uiWindowMargined(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %68

33:                                               ; preds = %13
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @uiBox(i8* %34)
  %36 = call i32 @uiBoxPadded(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %13
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @uiTab(i8* %38)
  %40 = call i64 @uiTabNumPages(i32 %39)
  store i64 %40, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %55, %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @uiTab(i8* %46)
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @uiTabMargined(i32 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %41

58:                                               ; preds = %41
  br label %68

59:                                               ; preds = %13
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @uiGroup(i8* %60)
  %62 = call i32 @uiGroupMargined(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %13, %67, %58, %33, %32
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %9

72:                                               ; preds = %9
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 109, i8* %74, align 1
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 32, i8* %76, align 1
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 48, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %2, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  store i8 32, i8* %83, align 1
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  store i8 112, i8* %85, align 1
  %86 = load i8*, i8** %2, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 5
  store i8 32, i8* %87, align 1
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 6
  store i8 48, i8* %89, align 1
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %72
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 6
  store i8 49, i8* %94, align 1
  br label %95

95:                                               ; preds = %92, %72
  %96 = load i8*, i8** %2, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 7
  store i8 0, i8* %97, align 1
  ret void
}

declare dso_local i32 @uiWindowMargined(i32) #1

declare dso_local i32 @uiWindow(i8*) #1

declare dso_local i32 @uiBoxPadded(i32) #1

declare dso_local i32 @uiBox(i8*) #1

declare dso_local i64 @uiTabNumPages(i32) #1

declare dso_local i32 @uiTab(i8*) #1

declare dso_local i32 @uiTabMargined(i32, i64) #1

declare dso_local i32 @uiGroupMargined(i32) #1

declare dso_local i32 @uiGroup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
