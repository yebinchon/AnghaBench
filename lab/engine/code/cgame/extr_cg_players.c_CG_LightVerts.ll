; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_LightVerts.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_LightVerts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32 }

@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CG_LightVerts(float* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load float*, float** %10, align 8
  %18 = load float*, float** %12, align 8
  %19 = load float*, float** %11, align 8
  %20 = call i32 @trap_R_LightForPoint(i32 %16, float* %17, float* %18, float* %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %146, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %149

25:                                               ; preds = %21
  %26 = load float*, float** %4, align 8
  %27 = load float*, float** %11, align 8
  %28 = call float @DotProduct(float* %26, float* %27)
  store float %28, float* %9, align 4
  %29 = load float, float* %9, align 4
  %30 = fcmp ole float %29, 0.000000e+00
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load float*, float** %10, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  store float %34, float* %41, align 4
  %42 = load float*, float** %10, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float %44, float* %51, align 4
  %52 = load float*, float** %10, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 2
  store float %54, float* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 3
  store float 2.550000e+02, float* %68, align 4
  br label %146

69:                                               ; preds = %25
  %70 = load float*, float** %10, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  %72 = load float, float* %71, align 4
  %73 = load float, float* %9, align 4
  %74 = load float*, float** %12, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  %76 = load float, float* %75, align 4
  %77 = fmul float %73, %76
  %78 = fadd float %72, %77
  %79 = fptosi float %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 255
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 255, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32, i32* %8, align 4
  %85 = sitofp i32 %84 to float
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load float*, float** %90, align 8
  %92 = getelementptr inbounds float, float* %91, i64 0
  store float %85, float* %92, align 4
  %93 = load float*, float** %10, align 8
  %94 = getelementptr inbounds float, float* %93, i64 1
  %95 = load float, float* %94, align 4
  %96 = load float, float* %9, align 4
  %97 = load float*, float** %12, align 8
  %98 = getelementptr inbounds float, float* %97, i64 1
  %99 = load float, float* %98, align 4
  %100 = fmul float %96, %99
  %101 = fadd float %95, %100
  %102 = fptosi float %101 to i32
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sgt i32 %103, 255
  br i1 %104, label %105, label %106

105:                                              ; preds = %83
  store i32 255, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* %8, align 4
  %108 = sitofp i32 %107 to float
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  store float %108, float* %115, align 4
  %116 = load float*, float** %10, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  %118 = load float, float* %117, align 4
  %119 = load float, float* %9, align 4
  %120 = load float*, float** %12, align 8
  %121 = getelementptr inbounds float, float* %120, i64 2
  %122 = load float, float* %121, align 4
  %123 = fmul float %119, %122
  %124 = fadd float %118, %123
  %125 = fptosi float %124 to i32
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp sgt i32 %126, 255
  br i1 %127, label %128, label %129

128:                                              ; preds = %106
  store i32 255, i32* %8, align 4
  br label %129

129:                                              ; preds = %128, %106
  %130 = load i32, i32* %8, align 4
  %131 = sitofp i32 %130 to float
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds float, float* %137, i64 2
  store float %131, float* %138, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load float*, float** %143, align 8
  %145 = getelementptr inbounds float, float* %144, i64 3
  store float 2.550000e+02, float* %145, align 4
  br label %146

146:                                              ; preds = %129, %31
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %21

149:                                              ; preds = %21
  %150 = load i32, i32* @qtrue, align 4
  ret i32 %150
}

declare dso_local i32 @trap_R_LightForPoint(i32, float*, float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
