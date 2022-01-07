; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_cdkey.c_UI_CDKeyMenu_DrawKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_cdkey.c_UI_CDKeyMenu_DrawKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@UI_LEFT = common dso_local global i32 0, align 4
@color_blue = common dso_local global float* null, align 8
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@listbar_color = common dso_local global i32 0, align 4
@UI_PULSE = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@color_white = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Please enter your CD Key\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_yellow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"The CD Key appears to be valid, thank you\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"The CD Key is not valid\00", align 1
@color_red = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @UI_CDKeyMenu_DrawKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_CDKeyMenu_DrawKey(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @UI_LEFT, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load float*, float** @color_blue, align 8
  store float* %29, float** %7, align 8
  br label %32

30:                                               ; preds = %1
  %31 = load float*, float** @color_blue, align 8
  store float* %31, float** %7, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %34 = mul nsw i32 8, %33
  %35 = sub nsw i32 320, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %37 = sdiv i32 %36, 2
  %38 = sub nsw i32 240, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %42 = mul nsw i32 16, %41
  %43 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %44 = load i32, i32* @listbar_color, align 4
  %45 = call i32 @UI_FillRect(i32 %39, i32 %40, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load float*, float** %7, align 8
  %54 = call i32 @UI_DrawString(i32 %46, i32 %47, i32 %51, i32 %52, float* %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %32
  %58 = call i64 (...) @trap_Key_GetOverstrikeMode()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i8 11, i8* %6, align 1
  br label %62

61:                                               ; preds = %57
  store i8 10, i8* %6, align 1
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* @UI_PULSE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @UI_BLINK, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %70, %76
  %78 = load i32, i32* %9, align 4
  %79 = load i8, i8* %6, align 1
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @color_white, align 4
  %82 = call i32 @UI_DrawChar(i32 %77, i32 %78, i8 signext %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %62, %32
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @UI_CDKeyMenu_PreValidateKey(i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load i32, i32* @UI_CENTER, align 4
  %93 = load i32, i32* @UI_SMALLFONT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @color_yellow, align 4
  %96 = call i32 @UI_DrawProportionalString(i32 320, i32 376, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  br label %113

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @UI_CENTER, align 4
  %102 = load i32, i32* @UI_SMALLFONT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @color_white, align 4
  %105 = call i32 @UI_DrawProportionalString(i32 320, i32 376, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  br label %112

106:                                              ; preds = %97
  %107 = load i32, i32* @UI_CENTER, align 4
  %108 = load i32, i32* @UI_SMALLFONT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @color_red, align 4
  %111 = call i32 @UI_DrawProportionalString(i32 320, i32 376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %91
  ret void
}

declare dso_local i32 @UI_FillRect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_DrawString(i32, i32, i32, i32, float*) #1

declare dso_local i64 @trap_Key_GetOverstrikeMode(...) #1

declare dso_local i32 @UI_DrawChar(i32, i32, i8 signext, i32, i32) #1

declare dso_local i32 @UI_CDKeyMenu_PreValidateKey(i32) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
