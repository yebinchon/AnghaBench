; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_DrawName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_DrawName.c"
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
@.str = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@PROP_HEIGHT = common dso_local global i64 0, align 8
@g_color_table = common dso_local global float** null, align 8
@COLOR_BLACK = common dso_local global i8 0, align 1
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@color_blue = common dso_local global float* null, align 8
@UI_CENTER = common dso_local global i32 0, align 4
@UI_BIGFONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @PlayerSettings_DrawName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerSettings_DrawName(i8* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca [32 x i8], align 16
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @UI_LEFT, align 4
  %37 = load i32, i32* @UI_SMALLFONT, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load float*, float** @text_color_normal, align 8
  store float* %39, float** %8, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load i32, i32* @UI_PULSE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load float*, float** @text_color_highlight, align 8
  store float* %46, float** %8, align 8
  br label %47

47:                                               ; preds = %42, %1
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load float*, float** %8, align 8
  %52 = call i32 @UI_DrawProportionalString(i32 %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50, float* %51)
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 64
  store i32 %54, i32* %10, align 4
  %55 = load i64, i64* @PROP_HEIGHT, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %6, align 8
  %64 = load float**, float*** @g_color_table, align 8
  %65 = load i8, i8* @COLOR_BLACK, align 1
  %66 = call i64 @ColorIndex(i8 signext %65)
  %67 = getelementptr inbounds float*, float** %64, i64 %66
  %68 = load float*, float** %67, align 8
  store float* %68, float** %8, align 8
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %99, %91, %47
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %7, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %111

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @Q_IsColorString(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @ColorIndex(i8 signext %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 7, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %82
  %92 = load float**, float*** @g_color_table, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float*, float** %92, i64 %94
  %96 = load float*, float** %95, align 8
  store float* %96, float** %8, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  store i8* %98, i8** %6, align 8
  br label %70

99:                                               ; preds = %78, %75
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i8, i8* %7, align 1
  %103 = load i32, i32* %5, align 4
  %104 = load float*, float** %8, align 8
  %105 = call i32 @UI_DrawChar(i32 %100, i32 %101, i8 signext %102, i32 %103, float* %104)
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %6, align 8
  %108 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %70

111:                                              ; preds = %70
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %111
  %115 = call i64 (...) @trap_Key_GetOverstrikeMode()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i8 11, i8* %7, align 1
  br label %119

118:                                              ; preds = %114
  store i8 10, i8* %7, align 1
  br label %119

119:                                              ; preds = %118, %117
  %120 = load i32, i32* @UI_PULSE, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @UI_BLINK, align 4
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %127, %133
  %135 = load i32, i32* %12, align 4
  %136 = load i8, i8* %7, align 1
  %137 = load i32, i32* %5, align 4
  %138 = load float*, float** @color_blue, align 8
  %139 = call i32 @UI_DrawChar(i32 %134, i32 %135, i8 signext %136, i32 %137, float* %138)
  br label %140

140:                                              ; preds = %119, %111
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @Q_strncpyz(i8* %141, i8* %145, i32 32)
  %147 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %148 = call i32 @Q_CleanStr(i8* %147)
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %150 = load i32, i32* @UI_CENTER, align 4
  %151 = load i32, i32* @UI_BIGFONT, align 4
  %152 = or i32 %150, %151
  %153 = load float*, float** @text_color_normal, align 8
  %154 = call i32 @UI_DrawProportionalString(i32 320, i32 440, i8* %149, i32 %152, float* %153)
  ret void
}

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, float*) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @UI_DrawChar(i32, i32, i8 signext, i32, float*) #1

declare dso_local i64 @trap_Key_GetOverstrikeMode(...) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Q_CleanStr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
