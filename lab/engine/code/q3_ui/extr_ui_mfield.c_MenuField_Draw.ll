; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_mfield.c_MenuField_Draw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_mfield.c_MenuField_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@QMF_SMALLFONT = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_BIGFONT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@UI_PULSE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@QMF_GRAYED = common dso_local global i32 0, align 4
@text_color_disabled = common dso_local global float* null, align 8
@text_color_highlight = common dso_local global float* null, align 8
@text_color_normal = common dso_local global float* null, align 8
@listbar_color = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@UI_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MenuField_Draw(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QMF_SMALLFONT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @UI_SMALLFONT, align 4
  store i32 %26, i32* %6, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @BIGCHAR_WIDTH, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @UI_BIGFONT, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_6__* @Menu_ItemAtCursor(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = icmp eq %struct.TYPE_6__* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i64, i64* @qtrue, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* @UI_PULSE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %30
  %44 = load i64, i64* @qfalse, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @QMF_GRAYED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load float*, float** @text_color_disabled, align 8
  store float* %54, float** %8, align 8
  br label %63

55:                                               ; preds = %45
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load float*, float** @text_color_highlight, align 8
  store float* %59, float** %8, align 8
  br label %62

60:                                               ; preds = %55
  %61 = load float*, float** @text_color_normal, align 8
  store float* %61, float** %8, align 8
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %63
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %78, %82
  %84 = add nsw i64 %83, 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %88, %92
  %94 = add nsw i64 %93, 1
  %95 = load i32, i32* @listbar_color, align 4
  %96 = call i32 @UI_FillRect(i64 %70, i64 %74, i64 %84, i64 %94, i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @UI_CENTER, align 4
  %100 = load i32, i32* @UI_BLINK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %101, %102
  %104 = load float*, float** %8, align 8
  %105 = call i32 @UI_DrawChar(i32 %97, i32 %98, i32 13, i32 %103, float* %104)
  br label %106

106:                                              ; preds = %66, %63
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %5, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @UI_RIGHT, align 4
  %123 = or i32 %121, %122
  %124 = load float*, float** %8, align 8
  %125 = call i32 @UI_DrawString(i32 %115, i32 %116, i32 %120, i32 %123, float* %124)
  br label %126

126:                                              ; preds = %112, %106
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load float*, float** %8, align 8
  %135 = call i32 @MField_Draw(i32* %128, i32 %131, i32 %132, i32 %133, float* %134)
  ret void
}

declare dso_local %struct.TYPE_6__* @Menu_ItemAtCursor(i32) #1

declare dso_local i32 @UI_FillRect(i64, i64, i64, i64, i32) #1

declare dso_local i32 @UI_DrawChar(i32, i32, i32, i32, float*) #1

declare dso_local i32 @UI_DrawString(i32, i32, i32, i32, float*) #1

declare dso_local i32 @MField_Draw(i32*, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
