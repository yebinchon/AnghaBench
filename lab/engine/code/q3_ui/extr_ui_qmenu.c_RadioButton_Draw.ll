; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_RadioButton_Draw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_RadioButton_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i8*, i64, i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@QMF_GRAYED = common dso_local global i32 0, align 4
@text_color_disabled = common dso_local global float* null, align 8
@UI_LEFT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@text_color_highlight = common dso_local global float* null, align 8
@UI_PULSE = common dso_local global i32 0, align 4
@text_color_normal = common dso_local global float* null, align 8
@listbar_color = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i64 0, align 8
@UI_RIGHT = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @RadioButton_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RadioButton_Draw(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 9
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @QMF_GRAYED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load float*, float** @text_color_disabled, align 8
  store float* %36, float** %5, align 8
  %37 = load i32, i32* @UI_LEFT, align 4
  %38 = load i32, i32* @UI_SMALLFONT, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %56

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load float*, float** @text_color_highlight, align 8
  store float* %44, float** %5, align 8
  %45 = load i32, i32* @UI_LEFT, align 4
  %46 = load i32, i32* @UI_PULSE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UI_SMALLFONT, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %6, align 4
  br label %55

50:                                               ; preds = %40
  %51 = load float*, float** @text_color_normal, align 8
  store float* %51, float** %5, align 8
  %52 = load i32, i32* @UI_LEFT, align 4
  %53 = load i32, i32* @UI_SMALLFONT, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %71, %75
  %77 = add nsw i64 %76, 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %81, %85
  %87 = add nsw i64 %86, 1
  %88 = load i32, i32* @listbar_color, align 4
  %89 = call i32 @UI_FillRect(i64 %63, i64 %67, i64 %77, i64 %87, i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @UI_CENTER, align 4
  %93 = load i32, i32* @UI_BLINK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UI_SMALLFONT, align 4
  %96 = or i32 %94, %95
  %97 = load float*, float** %5, align 8
  %98 = call i32 @UI_DrawChar(i32 %90, i32 %91, i32 13, i32 %96, float* %97)
  br label %99

99:                                               ; preds = %59, %56
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @SMALLCHAR_WIDTH, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @UI_RIGHT, align 4
  %116 = load i32, i32* @UI_SMALLFONT, align 4
  %117 = or i32 %115, %116
  %118 = load float*, float** %5, align 8
  %119 = call i32 @UI_DrawString(i64 %109, i32 %110, i8* %114, i32 %117, float* %118)
  br label %120

120:                                              ; preds = %105, %99
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* @SMALLCHAR_WIDTH, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 2
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uis, i32 0, i32 1), align 4
  %133 = call i32 @UI_DrawHandlePic(i64 %129, i32 %131, i32 16, i32 16, i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @SMALLCHAR_WIDTH, align 8
  %137 = add nsw i64 %135, %136
  %138 = add nsw i64 %137, 16
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load float*, float** %5, align 8
  %142 = call i32 @UI_DrawString(i64 %138, i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %140, float* %141)
  br label %161

143:                                              ; preds = %120
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* @SMALLCHAR_WIDTH, align 8
  %147 = add nsw i64 %145, %146
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 2
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uis, i32 0, i32 0), align 4
  %151 = call i32 @UI_DrawHandlePic(i64 %147, i32 %149, i32 16, i32 16, i32 %150)
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @SMALLCHAR_WIDTH, align 8
  %155 = add nsw i64 %153, %154
  %156 = add nsw i64 %155, 16
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load float*, float** %5, align 8
  %160 = call i32 @UI_DrawString(i64 %156, i32 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %158, float* %159)
  br label %161

161:                                              ; preds = %143, %125
  ret void
}

declare dso_local i32 @UI_FillRect(i64, i64, i64, i64, i32) #1

declare dso_local i32 @UI_DrawChar(i32, i32, i32, i32, float*) #1

declare dso_local i32 @UI_DrawString(i64, i32, i8*, i32, float*) #1

declare dso_local i32 @UI_DrawHandlePic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
