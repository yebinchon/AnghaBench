; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_SetSelectedPlayerName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_SetSelectedPlayerName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@cg_currentSelectedPlayer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@numSortedTeamPlayers = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sortedTeamPlayers = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"cg_selectedPlayerName\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cg_selectedPlayer\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Everyone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_SetSelectedPlayerName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_SetSelectedPlayerName() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg_currentSelectedPlayer, i32 0, i32 0), align 8
  %3 = icmp uge i64 %2, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg_currentSelectedPlayer, i32 0, i32 0), align 8
  %6 = load i64, i64* @numSortedTeamPlayers, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 1), align 8
  %10 = load i32*, i32** @sortedTeamPlayers, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg_currentSelectedPlayer, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %14
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %1, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** @sortedTeamPlayers, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg_currentSelectedPlayer, i32 0, i32 0), align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %18, %8
  br label %35

33:                                               ; preds = %4, %0
  %34 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i8* @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
