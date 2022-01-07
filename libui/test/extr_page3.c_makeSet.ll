; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page3.c_makeSet.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page3.c_makeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"First\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Second\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Third\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Fourth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @makeSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @makeSet(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32*], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32* (...) @newhbox()
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @uiBoxSetPadded(i32* %10, i32 1)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = call i32* @uiNewButton(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 0
  store i32* %15, i32** %16, align 16
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 0
  %19 = load i32*, i32** %18, align 16
  %20 = call i32 @uiControl(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @uiBoxAppend(i32* %17, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %3
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 1
  store i32* %27, i32** %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @uiControl(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @uiBoxAppend(i32* %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 2
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = call i32* @uiNewButton(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 2
  store i32* %39, i32** %40, align 16
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 2
  %43 = load i32*, i32** %42, align 16
  %44 = call i32 @uiControl(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @uiBoxAppend(i32* %41, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %52 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 3
  store i32* %51, i32** %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @uiControl(i32* %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @uiBoxAppend(i32* %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %47
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @uiControl(i32* %66)
  %68 = call i32 @uiControlHide(i32 %67)
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32*, i32** %7, align 8
  ret i32* %70
}

declare dso_local i32* @newhbox(...) #1

declare dso_local i32 @uiBoxSetPadded(i32*, i32) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32 @uiControlHide(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
