; ModuleID = '/home/carl/AnghaBench/htop/extr_FunctionBar.c_FunctionBar_drawAttr.c'
source_filename = "/home/carl/AnghaBench/htop/extr_FunctionBar.c_FunctionBar_drawAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i8** }

@CRT_colors = common dso_local global i32* null, align 8
@FUNCTION_BAR = common dso_local global i64 0, align 8
@LINES = common dso_local global i64 0, align 8
@COLS = common dso_local global i32 0, align 4
@FUNCTION_KEY = common dso_local global i64 0, align 8
@CRT_cursorX = common dso_local global i64 0, align 8
@RESET_COLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FunctionBar_drawAttr(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** @CRT_colors, align 8
  %10 = load i64, i64* @FUNCTION_BAR, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @attrset(i32 %12)
  %14 = load i64, i64* @LINES, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load i32, i32* @COLS, align 4
  %17 = call i32 @mvhline(i64 %15, i32 0, i8 signext 32, i32 %16)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %81, %3
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %18
  %25 = load i32*, i32** @CRT_colors, align 8
  %26 = load i64, i64* @FUNCTION_KEY, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @attrset(i32 %28)
  %30 = load i64, i64* @LINES, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @mvaddstr(i64 %31, i32 %32, i8* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32*, i32** @CRT_colors, align 8
  %54 = load i64, i64* @FUNCTION_BAR, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @attrset(i32 %56)
  %58 = load i64, i64* @LINES, align 8
  %59 = sub nsw i64 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @mvaddstr(i64 %59, i32 %60, i8* %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %24
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %18

84:                                               ; preds = %18
  %85 = load i8*, i8** %5, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @attrset(i32 %88)
  %90 = load i64, i64* @LINES, align 8
  %91 = sub nsw i64 %90, 1
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @mvaddstr(i64 %91, i32 %92, i8* %93)
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = load i8*, i8** %5, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = add nsw i64 %96, %98
  store i64 %99, i64* @CRT_cursorX, align 8
  %100 = call i32 @curs_set(i32 1)
  br label %103

101:                                              ; preds = %84
  %102 = call i32 @curs_set(i32 0)
  br label %103

103:                                              ; preds = %101, %87
  %104 = load i32*, i32** @CRT_colors, align 8
  %105 = load i64, i64* @RESET_COLOR, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @attrset(i32 %107)
  ret void
}

declare dso_local i32 @attrset(i32) #1

declare dso_local i32 @mvhline(i64, i32, i8 signext, i32) #1

declare dso_local i32 @mvaddstr(i64, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @curs_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
