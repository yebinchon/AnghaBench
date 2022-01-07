; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_saveconfig.c_UI_SaveConfigMenu_SavenameDraw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_saveconfig.c_UI_SaveConfigMenu_SavenameDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@saveConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@UI_LEFT = common dso_local global i32 0, align 4
@UI_PULSE = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@text_color_highlight = common dso_local global float* null, align 8
@colorRed = common dso_local global float* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Enter filename:\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@color_blue = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@colorBlack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @UI_SaveConfigMenu_SavenameDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SaveConfigMenu_SavenameDraw(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call %struct.TYPE_7__* @Menu_ItemAtCursor(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @saveConfig, i32 0, i32 0))
  %10 = icmp eq %struct.TYPE_7__* %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @UI_LEFT, align 4
  %13 = load i32, i32* @UI_PULSE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @UI_SMALLFONT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load float*, float** @text_color_highlight, align 8
  store float* %17, float** %5, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @UI_LEFT, align 4
  %20 = load i32, i32* @UI_SMALLFONT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load float*, float** @colorRed, align 8
  store float* %22, float** %5, align 8
  br label %23

23:                                               ; preds = %18, %11
  %24 = load i32, i32* @UI_CENTER, align 4
  %25 = load i32, i32* @UI_SMALLFONT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @color_blue, align 4
  %28 = call i32 @UI_DrawProportionalString(i32 320, i32 192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %44 = load i32, i32* @colorBlack, align 4
  %45 = call i32 @UI_FillRect(i32 %32, i32 %36, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load float*, float** %5, align 8
  %58 = call i32 @MField_Draw(%struct.TYPE_9__* %47, i32 %51, i32 %55, i32 %56, float* %57)
  ret void
}

declare dso_local %struct.TYPE_7__* @Menu_ItemAtCursor(i32*) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @UI_FillRect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MField_Draw(%struct.TYPE_9__*, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
