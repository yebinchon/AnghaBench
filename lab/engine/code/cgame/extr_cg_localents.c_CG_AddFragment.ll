; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddFragment.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddFragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { float*, float*, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { double, i32 }

@TR_STATIONARY = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@SINK_TIME = common dso_local global i32 0, align 4
@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@LEF_TUMBLE = common dso_local global i32 0, align 4
@LEBS_BLOOD = common dso_local global i64 0, align 8
@CONTENTS_NODROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddFragment(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TR_STATIONARY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SINK_TIME, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %14
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load float*, float** %30, align 8
  %32 = call i32 @VectorCopy(float* %27, float* %31)
  %33 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 2
  %44 = load float, float* %43, align 4
  store float %44, float* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sitofp i32 %45 to float
  %47 = load i32, i32* @SINK_TIME, align 4
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %46, %48
  %50 = fpext float %49 to double
  %51 = fsub double 1.000000e+00, %50
  %52 = fmul double 1.600000e+01, %51
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 2
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = fsub double %59, %52
  %61 = fptrunc double %60 to float
  store float %61, float* %57, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %63)
  %65 = load float, float* %6, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 2
  store float %65, float* %70, align 4
  br label %75

71:                                               ; preds = %14
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %73)
  br label %75

75:                                               ; preds = %71, %23
  br label %150

76:                                               ; preds = %1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %80 = load float*, float** %3, align 8
  %81 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_16__* %78, i32 %79, float* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load float*, float** %84, align 8
  %86 = load float*, float** %3, align 8
  %87 = load i32, i32* @CONTENTS_SOLID, align 4
  %88 = call i32 @CG_Trace(%struct.TYPE_17__* %4, float* %85, i32* null, i32* null, float* %86, i32 -1, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fcmp oeq double %90, 1.000000e+00
  br i1 %91, label %92, label %130

92:                                               ; preds = %76
  %93 = load float*, float** %3, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = call i32 @VectorCopy(float* %93, float* %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @LEF_TUMBLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %92
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %109 = load float*, float** %7, align 8
  %110 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_16__* %107, i32 %108, float* %109)
  %111 = load float*, float** %7, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @AnglesToAxis(float* %111, i32 %115)
  br label %117

117:                                              ; preds = %105, %92
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @LEBS_BLOOD, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %128 = call i32 @CG_BloodTrail(%struct.TYPE_18__* %127)
  br label %129

129:                                              ; preds = %126, %117
  br label %150

130:                                              ; preds = %76
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @CG_PointContents(i32 %132, i32 0)
  %134 = load i32, i32* @CONTENTS_NODROP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %139 = call i32 @CG_FreeLocalEntity(%struct.TYPE_18__* %138)
  br label %150

140:                                              ; preds = %130
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %142 = call i32 @CG_FragmentBounceMark(%struct.TYPE_18__* %141, %struct.TYPE_17__* %4)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %144 = call i32 @CG_FragmentBounceSound(%struct.TYPE_18__* %143, %struct.TYPE_17__* %4)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %146 = call i32 @CG_ReflectVelocity(%struct.TYPE_18__* %145, %struct.TYPE_17__* %4)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 3
  %149 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %148)
  br label %150

150:                                              ; preds = %140, %137, %129, %75
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__*) #1

declare dso_local i32 @BG_EvaluateTrajectory(%struct.TYPE_16__*, i32, float*) #1

declare dso_local i32 @CG_Trace(%struct.TYPE_17__*, float*, i32*, i32*, float*, i32, i32) #1

declare dso_local i32 @AnglesToAxis(float*, i32) #1

declare dso_local i32 @CG_BloodTrail(%struct.TYPE_18__*) #1

declare dso_local i32 @CG_PointContents(i32, i32) #1

declare dso_local i32 @CG_FreeLocalEntity(%struct.TYPE_18__*) #1

declare dso_local i32 @CG_FragmentBounceMark(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @CG_FragmentBounceSound(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @CG_ReflectVelocity(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
