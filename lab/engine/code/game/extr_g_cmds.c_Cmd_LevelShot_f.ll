; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_LevelShot_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_LevelShot_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"print \22The levelshot command must be executed by a local client\0A\22\00", align 1
@g_gametype = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"print \22Must not be in singleplayer mode for levelshot\0A\22\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clientLevelShot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_LevelShot_f(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = load i32, i32* @g_entities, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i64 %14
  %16 = call i32 @trap_SendServerCommand(%struct.TYPE_10__* %15, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = call i32 @CheatsOk(%struct.TYPE_10__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %41

22:                                               ; preds = %17
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_gametype, i32 0, i32 0), align 8
  %24 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = load i32, i32* @g_entities, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %30
  %32 = call i32 @trap_SendServerCommand(%struct.TYPE_10__* %31, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %41

33:                                               ; preds = %22
  %34 = call i32 (...) @BeginIntermission()
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = load i32, i32* @g_entities, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %38
  %40 = call i32 @trap_SendServerCommand(%struct.TYPE_10__* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %33, %26, %21, %10
  ret void
}

declare dso_local i32 @trap_SendServerCommand(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @CheatsOk(%struct.TYPE_10__*) #1

declare dso_local i32 @BeginIntermission(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
