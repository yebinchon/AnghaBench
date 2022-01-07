; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_Pickup_Team.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_Pickup_Team.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"team_CTF_redflag\00", align 1
@TEAM_RED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"team_CTF_blueflag\00", align 1
@TEAM_BLUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Don't know what team the flag is on.\0A\00", align 1
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Pickup_Team(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcmp(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @TEAM_RED, align 4
  store i32 %17, i32* %6, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @TEAM_BLUE, align 4
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32 @PrintMsg(%struct.TYPE_16__* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @Team_TouchOurFlag(%struct.TYPE_16__* %38, %struct.TYPE_16__* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @Team_TouchEnemyFlag(%struct.TYPE_16__* %43, %struct.TYPE_16__* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %37, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @PrintMsg(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @Team_TouchOurFlag(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Team_TouchEnemyFlag(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
