; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawMapTimeToBeat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawMapTimeToBeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@ui_currentMap = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@uiInfo = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"ui_currentMap\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ui_gameType = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%02i:%02i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, float, i32, i32)* @UI_DrawMapTimeToBeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawMapTimeToBeat(%struct.TYPE_10__* %0, float %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_currentMap, i32 0, i32 0), align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_currentMap, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @uiInfo, i32 0, i32 0), align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_currentMap, i32 0, i32 0), align 8
  %19 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @uiInfo, i32 0, i32 2), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_currentMap, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @uiInfo, i32 0, i32 1), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui_gameType, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sdiv i32 %33, 60
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = srem i32 %35, 60
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load float, float* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @va(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @Text_Paint(i32 %39, i32 %42, float %43, i32 %44, i32 %47, i32 0, i32 0, i32 %48)
  ret void
}

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @Text_Paint(i32, i32, float, i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
