; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_TeamVote_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_TeamVote_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@TEAM_RED = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"print \22No team vote in progress.\0A\22\00", align 1
@EF_TEAMVOTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"print \22Team vote already cast.\0A\22\00", align 1
@TEAM_SPECTATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"print \22Not allowed to vote as spectator.\0A\22\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"print \22Team vote cast.\0A\22\00", align 1
@CS_TEAMVOTE_YES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@CS_TEAMVOTE_NO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_TeamVote_f(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TEAM_RED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TEAM_BLUE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %22

21:                                               ; preds = %16
  br label %133

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 2), align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = load i32, i32* @g_entities, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %34
  %36 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %133

37:                                               ; preds = %23
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EF_TEAMVOTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = load i32, i32* @g_entities, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %51
  %53 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %133

54:                                               ; preds = %37
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TEAM_SPECTATOR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = load i32, i32* @g_entities, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %67
  %69 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %133

70:                                               ; preds = %54
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = load i32, i32* @g_entities, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %74
  %76 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EF_TEAMVOTED, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %77
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %86 = call i32 @trap_Argv(i32 1, i8* %85, i32 64)
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = call signext i8 @tolower(i8 signext %88)
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 121
  br i1 %91, label %97, label %92

92:                                               ; preds = %70
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %94 = load i8, i8* %93, align 16
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 49
  br i1 %96, label %97, label %115

97:                                               ; preds = %92, %70
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i64, i64* @CS_TEAMVOTE_YES, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = call i32 @trap_SetConfigstring(i64 %107, i32 %113)
  br label %133

115:                                              ; preds = %92
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load i64, i64* @CS_TEAMVOTE_NO, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = call i32 @trap_SetConfigstring(i64 %125, i32 %131)
  br label %133

133:                                              ; preds = %21, %30, %47, %63, %115, %97
  ret void
}

declare dso_local i32 @trap_SendServerCommand(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @trap_Argv(i32, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @trap_SetConfigstring(i64, i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
