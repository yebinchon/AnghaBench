; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_AddTeamScore.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_AddTeamScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@EV_GLOBAL_TEAM_SOUND = common dso_local global i32 0, align 4
@SVF_BROADCAST = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@GTS_TEAMS_ARE_TIED = common dso_local global i8* null, align 8
@GTS_REDTEAM_TOOK_LEAD = common dso_local global i8* null, align 8
@GTS_REDTEAM_SCORED = common dso_local global i8* null, align 8
@GTS_BLUETEAM_TOOK_LEAD = common dso_local global i8* null, align 8
@GTS_BLUETEAM_SCORED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddTeamScore(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EV_GLOBAL_TEAM_SOUND, align 4
  %10 = call %struct.TYPE_8__* @G_TempEntity(i32 %8, i32 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load i32, i32* @SVF_BROADCAST, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TEAM_RED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %3
  %21 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %22 = load i32, i32* @TEAM_RED, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %30 = load i64, i64* @TEAM_BLUE, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i8*, i8** @GTS_TEAMS_ARE_TIED, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  br label %75

39:                                               ; preds = %20
  %40 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %41 = load i32, i32* @TEAM_RED, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %46 = load i64, i64* @TEAM_BLUE, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %44, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %52 = load i32, i32* @TEAM_RED, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %60 = load i64, i64* @TEAM_BLUE, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %58, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load i8*, i8** @GTS_REDTEAM_TOOK_LEAD, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %74

69:                                               ; preds = %50, %39
  %70 = load i8*, i8** @GTS_REDTEAM_SCORED, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %34
  br label %132

76:                                               ; preds = %3
  %77 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %78 = load i64, i64* @TEAM_BLUE, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %85 = load i32, i32* @TEAM_RED, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %76
  %91 = load i8*, i8** @GTS_TEAMS_ARE_TIED, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %131

95:                                               ; preds = %76
  %96 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %97 = load i64, i64* @TEAM_BLUE, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %101 = load i32, i32* @TEAM_RED, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp sle i64 %99, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %95
  %107 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %108 = load i64, i64* @TEAM_BLUE, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %115 = load i32, i32* @TEAM_RED, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %113, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %106
  %121 = load i8*, i8** @GTS_BLUETEAM_TOOK_LEAD, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  br label %130

125:                                              ; preds = %106, %95
  %126 = load i8*, i8** @GTS_BLUETEAM_SCORED, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %90
  br label %132

132:                                              ; preds = %131, %75
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %134
  store i64 %140, i64* %138, align 8
  ret void
}

declare dso_local %struct.TYPE_8__* @G_TempEntity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
