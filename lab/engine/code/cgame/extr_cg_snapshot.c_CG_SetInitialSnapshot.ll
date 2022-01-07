; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_snapshot.c_CG_SetInitialSnapshot.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_snapshot.c_CG_SetInitialSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_entities = common dso_local global %struct.TYPE_14__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_SetInitialSnapshot(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cg_entities, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i32, i32* @qfalse, align 4
  %17 = call i32 @BG_PlayerStateToEntityState(%struct.TYPE_11__* %8, i32* %15, i32 %16)
  %18 = call i32 (...) @CG_BuildSolidList()
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CG_ExecuteNewServerCommands(i32 %21)
  %23 = call i32 (...) @CG_Respawn()
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %56, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %35
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cg_entities, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %40
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %4, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = call i32 @memcpy(i32* %43, %struct.TYPE_13__* %44, i32 8)
  %46 = load i32, i32* @qfalse, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @qtrue, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = call i32 @CG_ResetEntity(%struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call i32 @CG_CheckEvents(%struct.TYPE_14__* %54)
  br label %56

56:                                               ; preds = %30
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %24

59:                                               ; preds = %24
  ret void
}

declare dso_local i32 @BG_PlayerStateToEntityState(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @CG_BuildSolidList(...) #1

declare dso_local i32 @CG_ExecuteNewServerCommands(i32) #1

declare dso_local i32 @CG_Respawn(...) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @CG_ResetEntity(%struct.TYPE_14__*) #1

declare dso_local i32 @CG_CheckEvents(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
