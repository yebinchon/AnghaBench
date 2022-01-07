; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_effects.c_CG_MakeExplosion.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_effects.c_CG_MakeExplosion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, double*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, float, i32, i32, i8*, i8*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"CG_MakeExplosion: msec = %i\00", align 1
@LE_SPRITE_EXPLOSION = common dso_local global i32 0, align 4
@LE_EXPLOSION = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CG_MakeExplosion(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @CG_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %6
  %24 = call i32 (...) @rand()
  %25 = and i32 %24, 63
  store i32 %25, i32* %15, align 4
  %26 = call %struct.TYPE_7__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %14, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load i32, i32* @LE_SPRITE_EXPLOSION, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = call i32 (...) @rand()
  %34 = srem i32 %33, 360
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @VectorScale(i32 %38, i32 16, i32 %39)
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @VectorAdd(i32 %41, i32 %42, i32 %43)
  br label %79

45:                                               ; preds = %23
  %46 = load i32, i32* @LE_EXPLOSION, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @VectorCopy(i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @AxisClear(i32* %58)
  br label %78

60:                                               ; preds = %45
  %61 = call i32 (...) @rand()
  %62 = srem i32 %61, 360
  %63 = sitofp i32 %62 to float
  store float %63, float* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @VectorCopy(i32 %64, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load float, float* %13, align 4
  %77 = call i32 @RotateAroundDirection(i32* %75, float %76)
  br label %78

78:                                               ; preds = %60, %54
  br label %79

79:                                               ; preds = %78, %29
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sitofp i32 %94 to float
  %96 = fdiv float %95, 1.000000e+03
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store float %96, float* %99, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 5
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @VectorCopy(i32 %108, i32 %112)
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @VectorCopy(i32 %114, i32 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load double*, double** %121, align 8
  %123 = getelementptr inbounds double, double* %122, i64 2
  store double 1.000000e+00, double* %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load double*, double** %125, align 8
  %127 = getelementptr inbounds double, double* %126, i64 1
  store double 1.000000e+00, double* %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load double*, double** %129, align 8
  %131 = getelementptr inbounds double, double* %130, i64 0
  store double 1.000000e+00, double* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  ret %struct.TYPE_7__* %132
}

declare dso_local i32 @CG_Error(i8*, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_7__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @VectorScale(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AxisClear(i32*) #1

declare dso_local i32 @RotateAroundDirection(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
