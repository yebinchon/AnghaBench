; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page12.c_makePage12.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page12.c_makePage12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uiNewMultilineEntry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@uiNewNonWrappingMultilineEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no wrap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage12() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @newHorizontalBox()
  store i32* %3, i32** %1, align 8
  %4 = load i32, i32* @uiNewMultilineEntry, align 4
  %5 = call i32* @half(i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @uiControl(i32* %7)
  %9 = call i32 @uiBoxAppend(i32* %6, i32 %8, i32 1)
  %10 = load i32, i32* @uiNewNonWrappingMultilineEntry, align 4
  %11 = call i32* @half(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @uiControl(i32* %13)
  %15 = call i32 @uiBoxAppend(i32* %12, i32 %14, i32 1)
  %16 = load i32*, i32** %1, align 8
  ret i32* %16
}

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @half(i32, i8*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
