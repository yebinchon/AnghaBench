; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_AdjustPositionForMover.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_AdjustPositionForMover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@ENTITYNUM_MAX_NORMAL = common dso_local global i32 0, align 4
@cg_entities = common dso_local global %struct.TYPE_5__* null, align 8
@ET_MOVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AdjustPositionForMover(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ENTITYNUM_MAX_NORMAL, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %7
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @VectorCopy(i32 %29, i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @VectorCopy(i32 %32, i32 %33)
  br label %94

35:                                               ; preds = %24
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cg_entities, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %15, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ET_MOVER, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @VectorCopy(i32 %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @VectorCopy(i32 %50, i32 %51)
  br label %94

53:                                               ; preds = %35
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @BG_EvaluateTrajectory(i32* %56, i32 %57, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @BG_EvaluateTrajectory(i32* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @BG_EvaluateTrajectory(i32* %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %20, align 4
  %77 = call i32 @BG_EvaluateTrajectory(i32* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @VectorSubtract(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @VectorSubtract(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @VectorAdd(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @VectorAdd(i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %53, %46, %28
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @BG_EvaluateTrajectory(i32*, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
