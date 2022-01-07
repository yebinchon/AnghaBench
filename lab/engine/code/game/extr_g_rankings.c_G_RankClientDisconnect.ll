; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankClientDisconnect.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankClientDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@level = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_10__* null, align 8
@PERS_MATCH_RATING = common dso_local global i64 0, align 8
@QGR_KEY_MATCH_RATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankClientDisconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_entities, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %3, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %16, %20
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 60
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %36

26:                                               ; preds = %9
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PERS_MATCH_RATING, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %26, %25
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @QGR_KEY_MATCH_RATING, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @trap_RankReportInt(i32 %37, i32 -1, i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
