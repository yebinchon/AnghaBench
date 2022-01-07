; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_MoveClientToIntermission.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_MoveClientToIntermission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@SPECTATOR_FOLLOW = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@PM_INTERMISSION = common dso_local global i32 0, align 4
@ET_GENERAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MoveClientToIntermission(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %3 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = call i32 @StopFollowing(%struct.TYPE_15__* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 (...) @FindIntermissionPoint()
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 1), align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @VectorCopy(i32 %16, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 1), align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VectorCopy(i32 %22, i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 0), align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @VectorCopy(i32 %30, i32 %36)
  %38 = load i32, i32* @PM_INTERMISSION, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  store i32 %38, i32* %43, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memset(i32 %49, i32 0, i32 4)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @ET_GENERAL, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  ret void
}

declare dso_local i32 @StopFollowing(%struct.TYPE_15__*) #1

declare dso_local i32 @FindIntermissionPoint(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
