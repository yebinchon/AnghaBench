; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Vote_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Vote_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"print \22No vote in progress.\0A\22\00", align 1
@EF_VOTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"print \22Vote already cast.\0A\22\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"print \22Not allowed to vote as spectator.\0A\22\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"print \22Vote cast.\0A\22\00", align 1
@CS_VOTE_YES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@CS_VOTE_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Vote_f(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca [64 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 2), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @g_entities, align 4
  %9 = sext i32 %8 to i64
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i64 %10
  %12 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %87

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EF_VOTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = load i32, i32* @g_entities, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %27
  %29 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %87

30:                                               ; preds = %13
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TEAM_SPECTATOR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = load i32, i32* @g_entities, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %43
  %45 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %87

46:                                               ; preds = %30
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = load i32, i32* @g_entities, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %50
  %52 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EF_VOTED, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %53
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %62 = call i32 @trap_Argv(i32 1, i8* %61, i32 64)
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = call signext i8 @tolower(i8 signext %64)
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 121
  br i1 %67, label %73, label %68

68:                                               ; preds = %46
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 49
  br i1 %72, label %73, label %80

73:                                               ; preds = %68, %46
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 4
  %76 = load i32, i32* @CS_VOTE_YES, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 4
  %78 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = call i32 @trap_SetConfigstring(i32 %76, i32 %78)
  br label %87

80:                                               ; preds = %68
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %83 = load i32, i32* @CS_VOTE_NO, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %85 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = call i32 @trap_SetConfigstring(i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %6, %23, %39, %80, %73
  ret void
}

declare dso_local i32 @trap_SendServerCommand(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @trap_Argv(i32, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @trap_SetConfigstring(i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
