; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_ShotgunPellet.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_ShotgunPellet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_18__* null, align 8
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@DEFAULT_SHOTGUN_DAMAGE = common dso_local global i32 0, align 4
@s_quadFactor = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@MOD_SHOTGUN = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShotgunPellet(i32 %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %16 = load i32, i32* @qfalse, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @VectorCopy(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @VectorCopy(i32 %24, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %75, %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %78

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MASK_SHOT, align 4
  %35 = call i32 @trap_Trace(%struct.TYPE_17__* %8, i32 %31, i32* null, i32* null, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** @g_entities, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i64 %38
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SURF_NOIMPACT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @qfalse, align 4
  store i32 %46, i32* %4, align 4
  br label %80

47:                                               ; preds = %30
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load i32, i32* @DEFAULT_SHOTGUN_DAMAGE, align 4
  %54 = load i32, i32* @s_quadFactor, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = call i64 @LogAccuracyHit(%struct.TYPE_18__* %56, %struct.TYPE_18__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @qtrue, align 4
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %60, %52
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = load i32, i32* @forward, align 4
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @MOD_SHOTGUN, align 4
  %71 = call i32 @G_Damage(%struct.TYPE_18__* %63, %struct.TYPE_18__* %64, %struct.TYPE_18__* %65, i32 %66, i32 %68, i32 %69, i32 0, i32 %70)
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %4, align 4
  br label %80

73:                                               ; preds = %47
  %74 = load i32, i32* @qfalse, align 4
  store i32 %74, i32* %4, align 4
  br label %80

75:                                               ; No predecessors!
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %27

78:                                               ; preds = %27
  %79 = load i32, i32* @qfalse, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %73, %62, %45
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_17__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @G_Damage(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
