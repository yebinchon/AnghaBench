; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_ShotgunFire.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_ShotgunFire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8
@CONTENTS_WATER = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@LEF_PUFF_DONT_SCALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ShotgunFire(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @VectorSubtract(i32 %8, i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @VectorNormalize(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @VectorScale(i32 %17, i32 32, i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @VectorAdd(i32 %23, i32 %24, i32 %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 1, i32 0), align 8
  %28 = load i64, i64* @GLHW_RAGEPRO, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CG_PointContents(i32 %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CONTENTS_WATER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @VectorSet(i32 %41, i32 0, i32 0, i32 8)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 4
  %46 = load i32, i32* @LEF_PUFF_DONT_SCALE, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0, i32 0), align 8
  %48 = call i32 @CG_SmokePuff(i32 %43, i32 %44, i32 32, i32 1, i32 1, i32 1, float 0x3FD51EB860000000, i32 900, i32 %45, i32 0, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %30
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CG_ShotgunPattern(i32 %54, i32 %57, i32 %60, i32 %63)
  ret void
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i32 @VectorScale(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @CG_PointContents(i32, i32) #1

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @CG_SmokePuff(i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CG_ShotgunPattern(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
