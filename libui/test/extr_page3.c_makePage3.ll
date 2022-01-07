; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page3.c_makePage3.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page3.c_makePage3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Right Margin Test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage3() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32* (...) @newVerticalBox()
  store i32* %6, i32** %1, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %0
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = call i32* (...) @newhbox()
  store i32* %11, i32** %3, align 8
  %12 = call i32* (...) @newvbox()
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @makeSet(i32 %13, i32 -1, i32 0)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @uiControl(i32* %16)
  %18 = call i32 @uiBoxAppend(i32* %15, i32 %17, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = call i32* @makeSet(i32 -1, i32 %19, i32 0)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @uiControl(i32* %22)
  %24 = call i32 @uiBoxAppend(i32* %21, i32 %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @uiControl(i32* %26)
  %28 = call i32 @uiBoxAppend(i32* %25, i32 %27, i32 0)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32* @uiNewButton(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @uiControl(i32* %30)
  %32 = call i32 @uiBoxAppend(i32* %29, i32 %31, i32 1)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @uiControl(i32* %34)
  %36 = call i32 @uiBoxAppend(i32* %33, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %10
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %7

40:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = call i32* @makeSet(i32 -1, i32 %45, i32 1)
  store i32* %46, i32** %2, align 8
  %47 = load i32*, i32** %1, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @uiControl(i32* %48)
  %50 = call i32 @uiBoxAppend(i32* %47, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %41

54:                                               ; preds = %41
  %55 = load i32*, i32** %1, align 8
  ret i32* %55
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @newhbox(...) #1

declare dso_local i32* @newvbox(...) #1

declare dso_local i32* @makeSet(i32, i32, i32) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewButton(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
