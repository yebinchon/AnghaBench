; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_ShotgunPattern.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_ShotgunPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@qfalse = common dso_local global i64 0, align 8
@DEFAULT_SHOTGUN_COUNT = common dso_local global i32 0, align 4
@DEFAULT_SHOTGUN_SPREAD = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShotgunPattern(i32 %0, i32 %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %17 = load i64, i64* @qfalse, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @VectorNormalize2(i32 %18, i32 %19)
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @PerpendicularVector(i32 %21, i32 %22)
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @CrossProduct(i32 %24, i32 %25, i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %74, %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @DEFAULT_SHOTGUN_COUNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = call i32 @Q_crandom(i32* %7)
  %34 = load i32, i32* @DEFAULT_SHOTGUN_SPREAD, align 4
  %35 = mul nsw i32 %33, %34
  %36 = mul nsw i32 %35, 16
  %37 = sitofp i32 %36 to float
  store float %37, float* %10, align 4
  %38 = call i32 @Q_crandom(i32* %7)
  %39 = load i32, i32* @DEFAULT_SHOTGUN_SPREAD, align 4
  %40 = mul nsw i32 %38, %39
  %41 = mul nsw i32 %40, 16
  %42 = sitofp i32 %41 to float
  store float %42, float* %11, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @VectorMA(i32 %43, float 1.310720e+05, i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load float, float* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @VectorMA(i32 %47, float %48, i32 %49, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load float, float* %11, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @VectorMA(i32 %52, float %53, i32 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = call i64 @ShotgunPellet(i32 %57, i32 %58, %struct.TYPE_6__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %32
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @qtrue, align 8
  store i64 %66, i64* %16, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %62, %32
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %28

77:                                               ; preds = %28
  ret void
}

declare dso_local i32 @VectorNormalize2(i32, i32) #1

declare dso_local i32 @PerpendicularVector(i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @Q_crandom(i32*) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i64 @ShotgunPellet(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
