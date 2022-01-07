; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_rankings.c_SV_RankUserCBF.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_rankings.c_SV_RankUserCBF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [31 x i8] c"SV_RankUserCBF( %08X, %08X );\0A\00", align 1
@s_rankings_game_id = common dso_local global i32 0, align 4
@SV_RankJoinGameCBF = common dso_local global i32 0, align 4
@GR_OPT_END = common dso_local global i32 0, align 4
@GR_STATUS_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"SV_RankUserCBF: Expected GR_STATUS_PENDING from GRankJoinGameAsync, got %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"SV_RankUserCBF: Got status %s\0A\00", align 1
@QGR_STATUS_NO_USER = common dso_local global i64 0, align 8
@QGR_STATUS_BAD_PASSWORD = common dso_local global i64 0, align 8
@QGR_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"SV_RankUserCBF: Unexpected status %s\0A\00", align 1
@QGR_STATUS_ERROR = common dso_local global i64 0, align 8
@QGR_STATUS_NEW = common dso_local global i64 0, align 8
@SV_RankCleanupCBF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"SV_RankUserCBF: Expected GR_STATUS_PENDING from GRankCleanupAsync, got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @SV_RankUserCBF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_RankUserCBF(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_9__*
  %13 = call i32 @assert(%struct.TYPE_9__* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_9__*
  %19 = call i32 @assert(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, %struct.TYPE_10__*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %20, i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = call i32 @assert(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @assert(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %87 [
    i32 129, label %34
    i32 130, label %51
    i32 131, label %63
    i32 128, label %75
  ]

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* @s_rankings_game_id, align 4
  %39 = load i32, i32* @SV_RankJoinGameCBF, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @GR_OPT_END, align 4
  %42 = call i64 @GRankJoinGameAsync(%struct.TYPE_9__* %37, i32 %38, i32 %39, i8* %40, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @GR_STATUS_PENDING, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @SV_RankStatusString(i64 %47)
  %49 = call i32 @SV_RankError(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %34
  br label %99

51:                                               ; preds = %2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @SV_RankStatusString(i64 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to %struct.TYPE_10__*
  %59 = call i32 (i8*, %struct.TYPE_10__*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %58)
  %60 = load i64, i64* @QGR_STATUS_NO_USER, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %99

63:                                               ; preds = %2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @SV_RankStatusString(i64 %67)
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_10__*
  %71 = call i32 (i8*, %struct.TYPE_10__*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %70)
  %72 = load i64, i64* @QGR_STATUS_BAD_PASSWORD, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %99

75:                                               ; preds = %2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @SV_RankStatusString(i64 %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.TYPE_10__*
  %83 = call i32 (i8*, %struct.TYPE_10__*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %82)
  %84 = load i64, i64* @QGR_STATUS_TIMEOUT, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %99

87:                                               ; preds = %2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 @SV_RankStatusString(i64 %91)
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.TYPE_10__*
  %95 = call i32 (i8*, %struct.TYPE_10__*, ...) @Com_DPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_10__* %94)
  %96 = load i64, i64* @QGR_STATUS_ERROR, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %87, %75, %63, %51, %50
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @QGR_STATUS_NEW, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i32, i32* @SV_RankCleanupCBF, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = bitcast %struct.TYPE_9__* %110 to i8*
  %112 = load i32, i32* @GR_OPT_END, align 4
  %113 = call i64 @GRankCleanupAsync(%struct.TYPE_9__* %108, i32 0, i32 %109, i8* %111, i32 %112)
  store i64 %113, i64* %7, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* @GR_STATUS_PENDING, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %105
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @SV_RankStatusString(i64 %118)
  %120 = call i32 @SV_RankError(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = call i32 @SV_RankCloseContext(%struct.TYPE_9__* %121)
  br label %123

123:                                              ; preds = %117, %105
  br label %124

124:                                              ; preds = %123, %99
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @Com_DPrintf(i8*, %struct.TYPE_10__*, ...) #1

declare dso_local i64 @GRankJoinGameAsync(%struct.TYPE_9__*, i32, i32, i8*, i32) #1

declare dso_local i32 @SV_RankError(i8*, i32) #1

declare dso_local i32 @SV_RankStatusString(i64) #1

declare dso_local i64 @GRankCleanupAsync(%struct.TYPE_9__*, i32, i32, i8*, i32) #1

declare dso_local i32 @SV_RankCloseContext(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
