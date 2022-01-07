; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Follow_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Follow_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@SPECTATOR_FOLLOW = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@g_gametype = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"spectator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Follow_f(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = call i32 (...) @trap_Argc()
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = call i32 @StopFollowing(%struct.TYPE_12__* %23)
  br label %25

25:                                               ; preds = %22, %13
  store i32 1, i32* %6, align 4
  br label %103

26:                                               ; preds = %1
  %27 = trunc i64 %8 to i32
  %28 = call i32 @trap_Argv(i32 1, i8* %10, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = load i32, i32* @qtrue, align 4
  %31 = load i32, i32* @qtrue, align 4
  %32 = call i32 @ClientNumberFromString(%struct.TYPE_12__* %29, i8* %10, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %103

36:                                               ; preds = %26
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = icmp eq %struct.TYPE_11__* %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %103

46:                                               ; preds = %36
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TEAM_SPECTATOR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %103

57:                                               ; preds = %46
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g_gametype, i32 0, i32 0), align 8
  %59 = load i64, i64* @GT_TOURNAMENT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TEAM_FREE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %61, %57
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TEAM_SPECTATOR, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = call i32 @SetTeam(%struct.TYPE_12__* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %78
  %91 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i64 %91, i64* %96, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i32 %97, i32* %102, align 8
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %90, %56, %45, %35, %25
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %6, align 4
  switch i32 %105, label %107 [
    i32 0, label %106
    i32 1, label %106
  ]

106:                                              ; preds = %103, %103
  ret void

107:                                              ; preds = %103
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @StopFollowing(%struct.TYPE_12__*) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @ClientNumberFromString(%struct.TYPE_12__*, i8*, i32, i32) #2

declare dso_local i32 @SetTeam(%struct.TYPE_12__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
