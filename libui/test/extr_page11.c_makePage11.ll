; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page11.c_makePage11.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page11.c_makePage11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage11() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @newHorizontalBox()
  store i32* %4, i32** %1, align 8
  %5 = call i32* (...) @newVerticalBox()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @newg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = call i32 @uiControl(i32* %7)
  %9 = call i32 @uiBoxAppend(i32* %6, i32 %8, i32 0)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @newg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = call i32 @uiControl(i32* %11)
  %13 = call i32 @uiBoxAppend(i32* %10, i32 %12, i32 0)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @newg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %16 = call i32 @uiControl(i32* %15)
  %17 = call i32 @uiBoxAppend(i32* %14, i32 %16, i32 0)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @newg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %20 = call i32 @uiControl(i32* %19)
  %21 = call i32 @uiBoxAppend(i32* %18, i32 %20, i32 0)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @newt(i32 0)
  %24 = call i32 @uiControl(i32* %23)
  %25 = call i32 @uiBoxAppend(i32* %22, i32 %24, i32 0)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32* @newt(i32 1)
  %28 = call i32 @uiControl(i32* %27)
  %29 = call i32 @uiBoxAppend(i32* %26, i32 %28, i32 0)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @uiControl(i32* %31)
  %33 = call i32 @uiBoxAppend(i32* %30, i32 %32, i32 1)
  %34 = call i32* (...) @newVerticalBox()
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @newg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %37 = call i32 @uiControl(i32* %36)
  %38 = call i32 @uiBoxAppend(i32* %35, i32 %37, i32 1)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32* @newg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %41 = call i32 @uiControl(i32* %40)
  %42 = call i32 @uiBoxAppend(i32* %39, i32 %41, i32 1)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32* @newg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %45 = call i32 @uiControl(i32* %44)
  %46 = call i32 @uiBoxAppend(i32* %43, i32 %45, i32 1)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @newg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %49 = call i32 @uiControl(i32* %48)
  %50 = call i32 @uiBoxAppend(i32* %47, i32 %49, i32 1)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32* @newt(i32 0)
  %53 = call i32 @uiControl(i32* %52)
  %54 = call i32 @uiBoxAppend(i32* %51, i32 %53, i32 1)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32* @newt(i32 1)
  %57 = call i32 @uiControl(i32* %56)
  %58 = call i32 @uiBoxAppend(i32* %55, i32 %57, i32 1)
  %59 = load i32*, i32** %1, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @uiControl(i32* %60)
  %62 = call i32 @uiBoxAppend(i32* %59, i32 %61, i32 1)
  %63 = load i32*, i32** %1, align 8
  ret i32* %63
}

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @newg(i8*, i32) #1

declare dso_local i32* @newt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
