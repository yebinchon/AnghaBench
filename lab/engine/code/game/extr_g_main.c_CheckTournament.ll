; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CheckTournament.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CheckTournament.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }

@level = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_gametype = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@CS_WARMUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Warmup:\0A\00", align 1
@g_warmup = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"g_restarted\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"map_restart 0\0A\00", align 1
@qtrue = common dso_local global i8* null, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@TEAM_NUM_TEAMS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckTournament() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %175

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_gametype, i32 0, i32 0), align 8
  %10 = load i64, i64* @GT_TOURNAMENT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @AddTournamentPlayer()
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %24 = load i32, i32* @CS_WARMUP, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %26 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @trap_SetConfigstring(i32 %24, i32 %26)
  %28 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %23, %20
  br label %175

30:                                               ; preds = %17
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %175

34:                                               ; preds = %30
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 1), align 8
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 1), align 8
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 %52, 1000
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* @CS_WARMUP, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %59 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @trap_SetConfigstring(i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %43
  br label %175

62:                                               ; preds = %40
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %68 = add nsw i32 %67, 10000
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %69 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EXEC_APPEND, align 4
  %71 = call i32 @trap_SendConsoleCommand(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i8*, i8** @qtrue, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 4), align 8
  br label %175

73:                                               ; preds = %62
  br label %175

74:                                               ; preds = %8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_gametype, i32 0, i32 0), align 8
  %76 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %174

78:                                               ; preds = %74
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %174

81:                                               ; preds = %78
  %82 = load i32, i32* @TEAM_NUM_TEAMS, align 4
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %1, align 8
  %85 = alloca i32, i64 %83, align 16
  store i64 %83, i64* %2, align 8
  %86 = load i8*, i8** @qfalse, align 8
  store i8* %86, i8** %3, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_gametype, i32 0, i32 0), align 8
  %88 = load i64, i64* @GT_TEAM, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %81
  %91 = load i64, i64* @TEAM_BLUE, align 8
  %92 = call i32 @TeamCount(i32 -1, i64 %91)
  %93 = load i64, i64* @TEAM_BLUE, align 8
  %94 = getelementptr inbounds i32, i32* %85, i64 %93
  store i32 %92, i32* %94, align 4
  %95 = load i64, i64* @TEAM_RED, align 8
  %96 = call i32 @TeamCount(i32 -1, i64 %95)
  %97 = load i64, i64* @TEAM_RED, align 8
  %98 = getelementptr inbounds i32, i32* %85, i64 %97
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* @TEAM_RED, align 8
  %100 = getelementptr inbounds i32, i32* %85, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %108, label %103

103:                                              ; preds = %90
  %104 = load i64, i64* @TEAM_BLUE, align 8
  %105 = getelementptr inbounds i32, i32* %85, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %90
  %109 = load i8*, i8** @qtrue, align 8
  store i8* %109, i8** %3, align 8
  br label %110

110:                                              ; preds = %108, %103
  br label %117

111:                                              ; preds = %81
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i8*, i8** @qtrue, align 8
  store i8* %115, i8** %3, align 8
  br label %116

116:                                              ; preds = %114, %111
  br label %117

117:                                              ; preds = %116, %110
  %118 = load i8*, i8** %3, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %124 = load i32, i32* @CS_WARMUP, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %126 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = call i32 @trap_SetConfigstring(i32 %124, i32 %126)
  %128 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %123, %120
  store i32 1, i32* %4, align 4
  br label %170

130:                                              ; preds = %117
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 1, i32* %4, align 4
  br label %170

134:                                              ; preds = %130
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  store i64 %139, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 1), align 8
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 1), align 8
  %149 = sub nsw i32 %148, 1
  %150 = mul nsw i32 %149, 1000
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %153

152:                                              ; preds = %143
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %153

153:                                              ; preds = %152, %146
  %154 = load i32, i32* @CS_WARMUP, align 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %156 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = call i32 @trap_SetConfigstring(i32 %154, i32 %156)
  store i32 1, i32* %4, align 4
  br label %170

158:                                              ; preds = %140
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %164 = add nsw i32 %163, 10000
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %165 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* @EXEC_APPEND, align 4
  %167 = call i32 @trap_SendConsoleCommand(i32 %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i8*, i8** @qtrue, align 8
  store i8* %168, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 4), align 8
  store i32 1, i32* %4, align 4
  br label %170

169:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %162, %153, %133, %129
  %171 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %4, align 4
  switch i32 %172, label %176 [
    i32 0, label %173
    i32 1, label %175
  ]

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %173, %78, %74
  br label %175

175:                                              ; preds = %7, %29, %33, %61, %66, %170, %174, %73
  ret void

176:                                              ; preds = %170
  unreachable
}

declare dso_local i32 @AddTournamentPlayer(...) #1

declare dso_local i32 @trap_SetConfigstring(i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @G_LogPrintf(i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TeamCount(i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
