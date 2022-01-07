; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_session.c_G_InitSessionData.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_session.c_G_InitSessionData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"teampref\00", align 1
@g_localTeamPref = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"g_localTeamPref\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@level = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@g_gametype = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@GT_TEAM = common dso_local global i32 0, align 4
@TEAM_SPECTATOR = common dso_local global i8* null, align 8
@SPECTATOR_FREE = common dso_local global i8* null, align 8
@g_teamAutoJoin = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@g_entities = common dso_local global i32* null, align 8
@g_maxGameClients = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@TEAM_FREE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_InitSessionData(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8], align 1
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 2, i1 false)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @Info_ValueForKey(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_localTeamPref, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_localTeamPref, i32 0, i32 0), align 8
  store i8* %30, i8** %6, align 8
  %31 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %23, %17, %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 1), align 8
  %35 = ptrtoint %struct.TYPE_13__* %33 to i64
  %36 = ptrtoint %struct.TYPE_13__* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 24
  %39 = trunc i64 %38 to i32
  %40 = load i8*, i8** %4, align 8
  %41 = call i8* @Info_ValueForKey(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %42 = call signext i8 @dmlab_select_team(i32 %39, i8* %41)
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %47, %32
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g_gametype, i32 0, i32 0), align 4
  %51 = load i32, i32* @GT_TEAM, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @SPECTATOR_FREE, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_teamAutoJoin, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65, %53
  %69 = load i32*, i32** @g_entities, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 1), align 8
  %72 = ptrtoint %struct.TYPE_13__* %70 to i64
  %73 = ptrtoint %struct.TYPE_13__* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 24
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @SetTeam(i32* %76, i8* %77)
  br label %79

79:                                               ; preds = %68, %65
  br label %126

80:                                               ; preds = %49
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 115
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %122

90:                                               ; preds = %80
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g_gametype, i32 0, i32 0), align 4
  switch i32 %91, label %92 [
    i32 130, label %93
    i32 129, label %93
    i32 128, label %109
  ]

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %90, %90, %92
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_maxGameClients, i32 0, i32 0), align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_maxGameClients, i32 0, i32 0), align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %108

104:                                              ; preds = %96, %93
  %105 = load i8*, i8** @TEAM_FREE, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %121

109:                                              ; preds = %90
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %111 = icmp sge i32 %110, 2
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %120

116:                                              ; preds = %109
  %117 = load i8*, i8** @TEAM_FREE, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %108
  br label %122

122:                                              ; preds = %121, %86
  %123 = load i8*, i8** @SPECTATOR_FREE, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %79
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = call i32 @AddTournamentQueue(%struct.TYPE_13__* %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = call i32 @G_WriteClientSessionData(%struct.TYPE_13__* %129)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #2

declare dso_local signext i8 @dmlab_select_team(i32, i8*) #2

declare dso_local i32 @SetTeam(i32*, i8*) #2

declare dso_local i32 @AddTournamentQueue(%struct.TYPE_13__*) #2

declare dso_local i32 @G_WriteClientSessionData(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
