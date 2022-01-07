; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_ParticleExplosion.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_ParticleExplosion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [72 x i8] c"CG_ParticleExplosion: animStr is probably an index rather than a string\00", align 1
@shaderAnimNames = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"CG_ParticleExplosion: unknown animation string: %s\00", align 1
@free_particles = common dso_local global %struct.TYPE_5__* null, align 8
@active_particles = common dso_local global %struct.TYPE_5__* null, align 8
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@shaderAnimSTRatio = common dso_local global i32* null, align 8
@P_ANIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ParticleExplosion(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ult i8* %15, inttoptr (i64 10 to i8*)
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = call i32 (i8*, ...) @CG_Error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %6
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i64*, i64** @shaderAnimNames, align 8
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i64*, i64** @shaderAnimNames, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @Q_stricmp(i8* %28, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %20

41:                                               ; preds = %36, %20
  %42 = load i64*, i64** @shaderAnimNames, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, ...) @CG_Error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %134

51:                                               ; preds = %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %134

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %13, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 14
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** @free_particles, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @active_particles, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 14
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** @active_particles, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 13
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store double 5.000000e-01, double* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 12
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %55
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  br label %83

78:                                               ; preds = %55
  %79 = call i32 (...) @crandom()
  %80 = mul nsw i32 %79, 179
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** @shaderAnimSTRatio, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %90, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** @shaderAnimSTRatio, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %102, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 11
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* @P_ANIM, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @VectorCopy(i32 %120, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @VectorCopy(i32 %125, i32 %128)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @VectorClear(i32 %132)
  br label %134

134:                                              ; preds = %83, %54, %48
  ret void
}

declare dso_local i32 @CG_Error(i8*, ...) #1

declare dso_local i32 @Q_stricmp(i8*, i64) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
