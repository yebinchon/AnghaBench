; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_FindIntermissionPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_FindIntermissionPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@classname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"info_player_intermission\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindIntermissionPoint() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @classname, align 4
  %5 = call i32 @FOFS(i32 %4)
  %6 = call %struct.TYPE_7__* @G_Find(i32* null, i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %1, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @vec3_origin, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 0), align 4
  %13 = load i32, i32* @qfalse, align 4
  %14 = call i32 @SelectSpawnPoint(i32 %10, i32 %11, i32 %12, i32 %13)
  br label %52

15:                                               ; preds = %0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 1), align 4
  %21 = call i32 @VectorCopy(i32 %19, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 0), align 4
  %27 = call i32 @VectorCopy(i32 %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %15
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.TYPE_7__* @G_PickTarget(i64 %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %2, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 1), align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @VectorSubtract(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 0), align 4
  %49 = call i32 @vectoangles(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %32
  br label %51

51:                                               ; preds = %50, %15
  br label %52

52:                                               ; preds = %51, %9
  ret void
}

declare dso_local %struct.TYPE_7__* @G_Find(i32*, i32, i8*) #1

declare dso_local i32 @FOFS(i32) #1

declare dso_local i32 @SelectSpawnPoint(i32, i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local %struct.TYPE_7__* @G_PickTarget(i64) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @vectoangles(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
