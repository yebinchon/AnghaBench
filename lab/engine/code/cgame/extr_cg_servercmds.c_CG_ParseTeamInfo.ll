; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseTeamInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseTeamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@numSortedTeamPlayers = common dso_local global i32 0, align 4
@TEAM_MAXOVERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"CG_ParseTeamInfo: numSortedTeamPlayers out of range (%d)\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CG_ParseTeamInfo: bad client number: %d\00", align 1
@sortedTeamPlayers = common dso_local global i32* null, align 8
@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ParseTeamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ParseTeamInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @CG_Argv(i32 1)
  %4 = call i8* @atoi(i32 %3)
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* @numSortedTeamPlayers, align 4
  %6 = load i32, i32* @numSortedTeamPlayers, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @numSortedTeamPlayers, align 4
  %10 = load i32, i32* @TEAM_MAXOVERLAY, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %0
  %13 = load i32, i32* @numSortedTeamPlayers, align 4
  %14 = call i32 @CG_Error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %95

15:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %92, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @numSortedTeamPlayers, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %95

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = mul nsw i32 %21, 6
  %23 = add nsw i32 %22, 2
  %24 = call i32 @CG_Argv(i32 %23)
  %25 = call i8* @atoi(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @MAX_CLIENTS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %20
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @CG_Error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %95

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = load i32*, i32** @sortedTeamPlayers, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %1, align 4
  %43 = mul nsw i32 %42, 6
  %44 = add nsw i32 %43, 3
  %45 = call i32 @CG_Argv(i32 %44)
  %46 = call i8* @atoi(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i8* %46, i8** %51, align 8
  %52 = load i32, i32* %1, align 4
  %53 = mul nsw i32 %52, 6
  %54 = add nsw i32 %53, 4
  %55 = call i32 @CG_Argv(i32 %54)
  %56 = call i8* @atoi(i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i8* %56, i8** %61, align 8
  %62 = load i32, i32* %1, align 4
  %63 = mul nsw i32 %62, 6
  %64 = add nsw i32 %63, 5
  %65 = call i32 @CG_Argv(i32 %64)
  %66 = call i8* @atoi(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i8* %66, i8** %71, align 8
  %72 = load i32, i32* %1, align 4
  %73 = mul nsw i32 %72, 6
  %74 = add nsw i32 %73, 6
  %75 = call i32 @CG_Argv(i32 %74)
  %76 = call i8* @atoi(i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i8* %76, i8** %81, align 8
  %82 = load i32, i32* %1, align 4
  %83 = mul nsw i32 %82, 6
  %84 = add nsw i32 %83, 7
  %85 = call i32 @CG_Argv(i32 %84)
  %86 = call i8* @atoi(i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i8* %86, i8** %91, align 8
  br label %92

92:                                               ; preds = %36
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %16

95:                                               ; preds = %12, %33, %16
  ret void
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @CG_Argv(i32) #1

declare dso_local i32 @CG_Error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
