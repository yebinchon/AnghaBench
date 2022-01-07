; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_StopCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_StopCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@UI_MAPCINEMATIC = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ui_currentMap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@UI_NETMAPCINEMATIC = common dso_local global i32 0, align 4
@UI_CLANCINEMATIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ui_teamName\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_StopCinematic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_StopCinematic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @trap_CIN_StopCinematic(i32 %7)
  br label %84

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @abs(i32 %10) #3
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @UI_MAPCINEMATIC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 3), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui_currentMap, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 3), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui_currentMap, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @trap_CIN_StopCinematic(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 3), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui_currentMap, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  br label %33

33:                                               ; preds = %22, %15
  br label %83

34:                                               ; preds = %9
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @UI_NETMAPCINEMATIC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 2, i32 0), align 8
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 2, i32 0), align 8
  %43 = call i32 @trap_CIN_StopCinematic(i32 %42)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 2, i32 0), align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %82

45:                                               ; preds = %34
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @UI_CLANCINEMATIC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @UI_TeamIndexFromName(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0), align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 1), align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 1), align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @trap_CIN_StopCinematic(i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 1), align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 4
  br label %79

79:                                               ; preds = %66, %58
  br label %80

80:                                               ; preds = %79, %54, %49
  br label %81

81:                                               ; preds = %80, %45
  br label %82

82:                                               ; preds = %81, %44
  br label %83

83:                                               ; preds = %82, %33
  br label %84

84:                                               ; preds = %83, %6
  ret void
}

declare dso_local i32 @trap_CIN_StopCinematic(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @UI_TeamIndexFromName(i32) #1

declare dso_local i32 @UI_Cvar_VariableString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
