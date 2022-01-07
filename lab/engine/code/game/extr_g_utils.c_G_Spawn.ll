; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_Spawn.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_Spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@g_entities = common dso_local global %struct.TYPE_8__* null, align 8
@MAX_CLIENTS = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ENTITYNUM_MAX_NORMAL = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%4i: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"G_Spawn: no free entities\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @G_Spawn() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %58, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %61

8:                                                ; preds = %5
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_entities, align 8
  %10 = load i64, i64* @MAX_CLIENTS, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %10
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load i64, i64* @MAX_CLIENTS, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %47, %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %47

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %32 = add nsw i64 %31, 2000
  %33 = icmp sgt i64 %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 2), align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = icmp slt i64 %40, 1000
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %47

43:                                               ; preds = %34, %27, %24
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i32 @G_InitGentity(%struct.TYPE_8__* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %1, align 8
  br label %96

47:                                               ; preds = %42, %23
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 1
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %4, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %54 = load i32, i32* @ENTITYNUM_MAX_NORMAL, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %61

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %5

61:                                               ; preds = %56, %5
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %63 = load i32, i32* @ENTITYNUM_MAX_NORMAL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %79, %65
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @MAX_GENTITIES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32, i32* %2, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_entities, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @G_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %77)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %66

82:                                               ; preds = %66
  %83 = call i32 @G_Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %61
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 4), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 3), align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = call i32 @trap_LocateGameData(i32 %87, i32 %88, i32 24, i32* %91, i32 4)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = call i32 @G_InitGentity(%struct.TYPE_8__* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %1, align 8
  br label %96

96:                                               ; preds = %84, %43
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  ret %struct.TYPE_8__* %97
}

declare dso_local i32 @G_InitGentity(%struct.TYPE_8__*) #1

declare dso_local i32 @G_Printf(i8*, i32, i32) #1

declare dso_local i32 @G_Error(i8*) #1

declare dso_local i32 @trap_LocateGameData(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
