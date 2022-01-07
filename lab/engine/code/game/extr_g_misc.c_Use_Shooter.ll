; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_misc.c_Use_Shooter.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_misc.c_Use_Shooter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float, %struct.TYPE_14__, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@EV_FIRE_WEAPON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Use_Shooter(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @VectorSubtract(i32 %21, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @VectorNormalize(i32 %28)
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @VectorCopy(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %15
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PerpendicularVector(i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @CrossProduct(i32 %40, i32 %41, i32 %42)
  %44 = call float (...) @crandom()
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 8
  %48 = fmul float %44, %47
  store float %48, float* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load float, float* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @VectorMA(i32 %49, float %50, i32 %51, i32 %52)
  %54 = call float (...) @crandom()
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 8
  %58 = fmul float %54, %57
  store float %58, float* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load float, float* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @VectorMA(i32 %59, float %60, i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @VectorNormalize(i32 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %94 [
    i32 130, label %70
    i32 128, label %78
    i32 129, label %86
  ]

70:                                               ; preds = %36
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @fire_grenade(%struct.TYPE_15__* %71, i32 %75, i32 %76)
  br label %94

78:                                               ; preds = %36
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @fire_rocket(%struct.TYPE_15__* %79, i32 %83, i32 %84)
  br label %94

86:                                               ; preds = %36
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @fire_plasma(%struct.TYPE_15__* %87, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %36, %86, %78, %70
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = load i32, i32* @EV_FIRE_WEAPON, align 4
  %97 = call i32 @G_AddEvent(%struct.TYPE_15__* %95, i32 %96, i32 0)
  ret void
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @PerpendicularVector(i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local float @crandom(...) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @fire_grenade(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @fire_rocket(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @fire_plasma(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
