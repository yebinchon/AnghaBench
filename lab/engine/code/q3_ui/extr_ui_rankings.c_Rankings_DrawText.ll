; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_rankings.c_Rankings_DrawText.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_rankings.c_Rankings_DrawText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@UI_LEFT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@text_color_normal = common dso_local global float* null, align 8
@UI_PULSE = common dso_local global i32 0, align 4
@text_color_highlight = common dso_local global float* null, align 8
@g_color_table = common dso_local global float** null, align 8
@COLOR_WHITE = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@color_white = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Rankings_DrawText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @UI_LEFT, align 4
  %36 = load i32, i32* @UI_SMALLFONT, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load float*, float** @text_color_normal, align 8
  store float* %38, float** %8, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load i32, i32* @UI_PULSE, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load float*, float** @text_color_highlight, align 8
  store float* %45, float** %8, align 8
  br label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %6, align 8
  %51 = load float**, float*** @g_color_table, align 8
  %52 = load i32, i32* @COLOR_WHITE, align 4
  %53 = call i64 @ColorIndex(i32 %52)
  %54 = getelementptr inbounds float*, float** %51, i64 %53
  %55 = load float*, float** %54, align 8
  store float* %55, float** %8, align 8
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %62, %46
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i8, i8* %7, align 1
  %66 = load i32, i32* %5, align 4
  %67 = load float*, float** %8, align 8
  %68 = call i32 @UI_DrawChar(i32 %63, i32 %64, i8 signext %65, i32 %66, float* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  %71 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %57

74:                                               ; preds = %57
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = call i64 (...) @trap_Key_GetOverstrikeMode()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8 11, i8* %7, align 1
  br label %82

81:                                               ; preds = %77
  store i8 10, i8* %7, align 1
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* @UI_PULSE, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @UI_BLINK, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %90, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i8, i8* %7, align 1
  %100 = load i32, i32* %5, align 4
  %101 = load float*, float** @color_white, align 8
  %102 = call i32 @UI_DrawChar(i32 %97, i32 %98, i8 signext %99, i32 %100, float* %101)
  br label %103

103:                                              ; preds = %82, %74
  ret void
}

declare dso_local i64 @ColorIndex(i32) #1

declare dso_local i32 @UI_DrawChar(i32, i32, i8 signext, i32, float*) #1

declare dso_local i64 @trap_Key_GetOverstrikeMode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
