; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawMapCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawMapCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@ui_currentNetMap = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ui_currentMap = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@uiInfo = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"ui_currentNetMap\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ui_currentMap\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.roq\00", align 1
@CIN_loop = common dso_local global i32 0, align 4
@CIN_silent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float, i32, i64)* @UI_DrawMapCinematic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawMapCinematic(%struct.TYPE_9__* %0, float %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_currentNetMap, i32 0, i32 0), align 4
  br label %16

14:                                               ; preds = %4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui_currentMap, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 0), align 8
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20, %16
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_currentNetMap, i32 0, i32 0), align 4
  %28 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

29:                                               ; preds = %24
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui_currentMap, i32 0, i32 0), align 4
  %30 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, -1
  br i1 %39, label %40, label %107

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %65

48:                                               ; preds = %40
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @CIN_loop, align 4
  %57 = load i32, i32* @CIN_silent, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @trap_CIN_PlayCinematic(i32 %55, i32 0, i32 0, i32 0, i32 0, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %48, %40
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %65
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @trap_CIN_RunCinematic(i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @UI_DrawCinematic(i32 %86, i32 %89, i32 %92, i32 %95, i32 %98)
  br label %106

100:                                              ; preds = %65
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uiInfo, i32 0, i32 1), align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 -2, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %73
  br label %113

107:                                              ; preds = %32
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = load float, float* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @UI_DrawMapPreview(%struct.TYPE_9__* %108, float %109, i32 %110, i64 %111)
  br label %113

113:                                              ; preds = %107, %106
  ret void
}

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @trap_CIN_PlayCinematic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @trap_CIN_RunCinematic(i32) #1

declare dso_local i32 @UI_DrawCinematic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_DrawMapPreview(%struct.TYPE_9__*, float, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
