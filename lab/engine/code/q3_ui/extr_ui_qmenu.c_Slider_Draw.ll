; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_Slider_Draw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_Slider_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, float, float, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@QMF_GRAYED = common dso_local global i32 0, align 4
@text_color_disabled = common dso_local global float* null, align 8
@UI_SMALLFONT = common dso_local global i32 0, align 4
@text_color_highlight = common dso_local global float* null, align 8
@UI_PULSE = common dso_local global i32 0, align 4
@text_color_normal = common dso_local global float* null, align 8
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_RIGHT = common dso_local global i32 0, align 4
@sliderBar = common dso_local global i32 0, align 4
@sliderButton_1 = common dso_local global i32 0, align 4
@sliderButton_0 = common dso_local global i32 0, align 4
@SLIDER_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @Slider_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Slider_Draw(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @QMF_GRAYED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load float*, float** @text_color_disabled, align 8
  store float* %37, float** %6, align 8
  %38 = load i32, i32* @UI_SMALLFONT, align 4
  store i32 %38, i32* %5, align 4
  br label %51

39:                                               ; preds = %1
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load float*, float** @text_color_highlight, align 8
  store float* %43, float** %6, align 8
  %44 = load i32, i32* @UI_SMALLFONT, align 4
  %45 = load i32, i32* @UI_PULSE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load float*, float** @text_color_normal, align 8
  store float* %48, float** %6, align 8
  %49 = load i32, i32* @UI_SMALLFONT, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UI_RIGHT, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %60, %61
  %63 = load float*, float** %6, align 8
  %64 = call i32 @UI_DrawString(i32 %54, i32 %55, i32 %59, i32 %62, float* %63)
  %65 = load float*, float** %6, align 8
  %66 = call i32 @UI_SetColor(float* %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @sliderBar, align 4
  %72 = call i32 @UI_DrawHandlePic(i32 %69, i32 %70, i32 96, i32 16, i32 %71)
  %73 = call i32 @UI_SetColor(float* null)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %51
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load float, float* %83, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sitofp i64 %87 to float
  %89 = fsub float %84, %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = sitofp i64 %96 to float
  %98 = fdiv float %89, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store float %98, float* %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load float, float* %102, align 8
  %104 = fcmp olt float %103, 0.000000e+00
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store float 0.000000e+00, float* %107, align 8
  br label %117

108:                                              ; preds = %81
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load float, float* %110, align 8
  %112 = fcmp ogt float %111, 1.000000e+00
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  store float 1.000000e+00, float* %115, align 8
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %105
  br label %121

118:                                              ; preds = %51
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  store float 0.000000e+00, float* %120, align 8
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @UI_PULSE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @sliderButton_1, align 4
  store i32 %127, i32* %7, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @sliderButton_0, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %133 = mul nsw i32 2, %132
  %134 = add nsw i32 %131, %133
  %135 = sitofp i32 %134 to float
  %136 = load i32, i32* @SLIDER_RANGE, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sitofp i32 %139 to float
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load float, float* %142, align 8
  %144 = fmul float %140, %143
  %145 = fadd float %135, %144
  %146 = fptosi float %145 to i32
  %147 = sub nsw i32 %146, 2
  %148 = load i32, i32* %4, align 4
  %149 = sub nsw i32 %148, 2
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @UI_DrawHandlePic(i32 %147, i32 %149, i32 12, i32 20, i32 %150)
  ret void
}

declare dso_local i32 @UI_DrawString(i32, i32, i32, i32, float*) #1

declare dso_local i32 @UI_SetColor(float*) #1

declare dso_local i32 @UI_DrawHandlePic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
