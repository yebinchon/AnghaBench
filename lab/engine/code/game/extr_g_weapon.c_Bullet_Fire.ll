; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_Bullet_Fire.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_Bullet_Fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_18__*, i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32, i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@s_quadFactor = common dso_local global i32 0, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@muzzle = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@right = common dso_local global i32 0, align 4
@up = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_21__* null, align 8
@EV_BULLET_HIT_FLESH = common dso_local global i32 0, align 4
@EV_BULLET_HIT_WALL = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Bullet_Fire(%struct.TYPE_21__* %0, float %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @s_quadFactor, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = call float (...) @random()
  %21 = load float, float* @M_PI, align 4
  %22 = fmul float %20, %21
  %23 = fmul float %22, 2.000000e+00
  store float %23, float* %11, align 4
  %24 = load float, float* %11, align 4
  %25 = call float @sin(float %24)
  %26 = call float (...) @crandom()
  %27 = fmul float %25, %26
  %28 = load float, float* %6, align 4
  %29 = fmul float %27, %28
  %30 = fmul float %29, 1.600000e+01
  store float %30, float* %12, align 4
  %31 = load float, float* %11, align 4
  %32 = call float @cos(float %31)
  %33 = call float (...) @crandom()
  %34 = fmul float %32, %33
  %35 = load float, float* %6, align 4
  %36 = fmul float %34, %35
  %37 = fmul float %36, 1.600000e+01
  store float %37, float* %11, align 4
  %38 = load i32, i32* @muzzle, align 4
  %39 = load i32, i32* @forward, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @VectorMA(i32 %38, float 1.310720e+05, i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load float, float* %11, align 4
  %44 = load i32, i32* @right, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @VectorMA(i32 %42, float %43, i32 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load float, float* %12, align 4
  %49 = load i32, i32* @up, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @VectorMA(i32 %47, float %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %148, %4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %151

59:                                               ; preds = %56
  %60 = load i32, i32* @muzzle, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @MASK_SHOT, align 4
  %64 = call i32 @trap_Trace(%struct.TYPE_20__* %9, i32 %60, i32* null, i32* null, i32 %61, i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SURF_NOIMPACT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %151

71:                                               ; preds = %59
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_entities, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i64 %74
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @muzzle, align 4
  %79 = call i32 @SnapVectorTowards(i32 %77, i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %71
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = icmp ne %struct.TYPE_18__* %87, null
  br i1 %88, label %89, label %113

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @EV_BULLET_HIT_FLESH, align 4
  %93 = call %struct.TYPE_21__* @G_TempEntity(i32 %91, i32 %92)
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %13, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = call i64 @LogAccuracyHit(%struct.TYPE_21__* %101, %struct.TYPE_21__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %89
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %105, %89
  br label %125

113:                                              ; preds = %84, %71
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @EV_BULLET_HIT_WALL, align 4
  %117 = call %struct.TYPE_21__* @G_TempEntity(i32 %115, i32 %116)
  store %struct.TYPE_21__* %117, %struct.TYPE_21__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DirToByte(i32 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %113, %112
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %125
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = load i32, i32* @forward, align 4
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @G_Damage(%struct.TYPE_21__* %138, %struct.TYPE_21__* %139, %struct.TYPE_21__* %140, i32 %141, i32 %143, i32 %144, i32 0, i32 %145)
  br label %147

147:                                              ; preds = %137, %125
  br label %151

148:                                              ; No predecessors!
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %56

151:                                              ; preds = %70, %147, %56
  ret void
}

declare dso_local float @random(...) #1

declare dso_local float @sin(float) #1

declare dso_local float @crandom(...) #1

declare dso_local float @cos(float) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @SnapVectorTowards(i32, i32) #1

declare dso_local %struct.TYPE_21__* @G_TempEntity(i32, i32) #1

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @DirToByte(i32) #1

declare dso_local i32 @G_Damage(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
