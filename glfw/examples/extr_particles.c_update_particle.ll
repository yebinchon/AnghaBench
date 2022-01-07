; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_particles.c_update_particle.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_particles.c_update_particle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, float, float, i64 }

@LIFE_SPAN = common dso_local global float 0.000000e+00, align 4
@GRAVITY = common dso_local global float 0.000000e+00, align 4
@FOUNTAIN_R2 = common dso_local global i32 0, align 4
@FOUNTAIN_HEIGHT = common dso_local global i32 0, align 4
@PARTICLE_SIZE = common dso_local global i32 0, align 4
@FRICTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float)* @update_particle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_particle(%struct.TYPE_3__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %168

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  %12 = load float, float* @LIFE_SPAN, align 4
  %13 = fdiv float 1.000000e+00, %12
  %14 = fmul float %11, %13
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  %18 = fsub float %17, %14
  store float %18, float* %16, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = fcmp ole float %21, 0.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  br label %168

26:                                               ; preds = %10
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = load float, float* @GRAVITY, align 4
  %31 = load float, float* %4, align 4
  %32 = fmul float %30, %31
  %33 = fsub float %29, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store float %33, float* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load float, float* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load float, float* %40, align 4
  %42 = load float, float* %4, align 4
  %43 = fmul float %41, %42
  %44 = fadd float %38, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store float %44, float* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load float, float* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load float, float* %51, align 4
  %53 = load float, float* %4, align 4
  %54 = fmul float %52, %53
  %55 = fadd float %49, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store float %55, float* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = load float, float* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load float, float* %62, align 4
  %64 = load float, float* %4, align 4
  %65 = fmul float %63, %64
  %66 = fadd float %60, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  store float %66, float* %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load float, float* %70, align 4
  %72 = fcmp olt float %71, 0.000000e+00
  br i1 %72, label %73, label %168

73:                                               ; preds = %26
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load float, float* %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load float, float* %78, align 8
  %80 = fmul float %76, %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load float, float* %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load float, float* %85, align 8
  %87 = fmul float %83, %86
  %88 = fadd float %80, %87
  %89 = load i32, i32* @FOUNTAIN_R2, align 4
  %90 = sitofp i32 %89 to float
  %91 = fcmp olt float %88, %90
  br i1 %91, label %92, label %132

92:                                               ; preds = %73
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  %95 = load float, float* %94, align 8
  %96 = load i32, i32* @FOUNTAIN_HEIGHT, align 4
  %97 = load i32, i32* @PARTICLE_SIZE, align 4
  %98 = sdiv i32 %97, 2
  %99 = add nsw i32 %96, %98
  %100 = sitofp i32 %99 to float
  %101 = fcmp olt float %95, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %92
  %103 = load i32, i32* @FRICTION, align 4
  %104 = sub nsw i32 0, %103
  %105 = sitofp i32 %104 to float
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load float, float* %107, align 4
  %109 = fmul float %105, %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store float %109, float* %111, align 4
  %112 = load i32, i32* @FOUNTAIN_HEIGHT, align 4
  %113 = load i32, i32* @PARTICLE_SIZE, align 4
  %114 = sdiv i32 %113, 2
  %115 = add nsw i32 %112, %114
  %116 = sitofp i32 %115 to float
  %117 = load i32, i32* @FRICTION, align 4
  %118 = sitofp i32 %117 to float
  %119 = load i32, i32* @FOUNTAIN_HEIGHT, align 4
  %120 = load i32, i32* @PARTICLE_SIZE, align 4
  %121 = sdiv i32 %120, 2
  %122 = add nsw i32 %119, %121
  %123 = sitofp i32 %122 to float
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  %126 = load float, float* %125, align 8
  %127 = fsub float %123, %126
  %128 = fmul float %118, %127
  %129 = fadd float %116, %128
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 6
  store float %129, float* %131, align 8
  br label %167

132:                                              ; preds = %92, %73
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  %135 = load float, float* %134, align 8
  %136 = load i32, i32* @PARTICLE_SIZE, align 4
  %137 = sdiv i32 %136, 2
  %138 = sitofp i32 %137 to float
  %139 = fcmp olt float %135, %138
  br i1 %139, label %140, label %166

140:                                              ; preds = %132
  %141 = load i32, i32* @FRICTION, align 4
  %142 = sub nsw i32 0, %141
  %143 = sitofp i32 %142 to float
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load float, float* %145, align 4
  %147 = fmul float %143, %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store float %147, float* %149, align 4
  %150 = load i32, i32* @PARTICLE_SIZE, align 4
  %151 = sdiv i32 %150, 2
  %152 = sitofp i32 %151 to float
  %153 = load i32, i32* @FRICTION, align 4
  %154 = sitofp i32 %153 to float
  %155 = load i32, i32* @PARTICLE_SIZE, align 4
  %156 = sdiv i32 %155, 2
  %157 = sitofp i32 %156 to float
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 6
  %160 = load float, float* %159, align 8
  %161 = fsub float %157, %160
  %162 = fmul float %154, %161
  %163 = fadd float %152, %162
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  store float %163, float* %165, align 8
  br label %166

166:                                              ; preds = %140, %132
  br label %167

167:                                              ; preds = %166, %102
  br label %168

168:                                              ; preds = %9, %23, %167, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
