; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_SP_func_train.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_SP_func_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TRAIN_BLOCK_STOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"func_train without a target at %s\0A\00", align 1
@Reached_Train = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FRAMETIME = common dso_local global i64 0, align 8
@Think_SetupTrainTargets = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SP_func_train(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 9
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @VectorClear(i32 %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TRAIN_BLOCK_STOPS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store i32 2, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 100, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vtos(i32 %43)
  %45 = call i32 @G_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = call i32 @G_FreeEntity(%struct.TYPE_11__* %46)
  br label %67

48:                                               ; preds = %34
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @trap_SetBrushModel(%struct.TYPE_11__* %49, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = call i32 @InitMover(%struct.TYPE_11__* %54)
  %56 = load i32, i32* @Reached_Train, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %60 = load i64, i64* @FRAMETIME, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @Think_SetupTrainTargets, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %48, %39
  ret void
}

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @G_Printf(i8*, i32) #1

declare dso_local i32 @vtos(i32) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_11__*) #1

declare dso_local i32 @trap_SetBrushModel(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @InitMover(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
