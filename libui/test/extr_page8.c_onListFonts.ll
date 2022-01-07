; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page8.c_onListFonts.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page8.c_onListFonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @onListFonts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onListFonts(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @uiMultilineEntry(i8* %9)
  %11 = call i32 @uiMultilineEntrySetText(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = call i32* (...) @uiDrawListFontFamilies()
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @uiDrawFontFamiliesNumFamilies(i32* %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %32, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @uiDrawFontFamiliesFamily(i32* %20, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @uiMultilineEntry(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @uiMultilineEntryAppend(i32 %24, i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @uiMultilineEntry(i8* %27)
  %29 = call i32 @uiMultilineEntryAppend(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @uiFreeText(i8* %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @uiDrawFreeFontFamilies(i32* %36)
  ret void
}

declare dso_local i32 @uiMultilineEntrySetText(i32, i8*) #1

declare dso_local i32 @uiMultilineEntry(i8*) #1

declare dso_local i32* @uiDrawListFontFamilies(...) #1

declare dso_local i32 @uiDrawFontFamiliesNumFamilies(i32*) #1

declare dso_local i8* @uiDrawFontFamiliesFamily(i32*, i32) #1

declare dso_local i32 @uiMultilineEntryAppend(i32, i8*) #1

declare dso_local i32 @uiFreeText(i8*) #1

declare dso_local i32 @uiDrawFreeFontFamilies(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
