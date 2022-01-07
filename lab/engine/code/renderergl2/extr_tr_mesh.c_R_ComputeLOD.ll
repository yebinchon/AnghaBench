; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_mesh.c_R_ComputeLOD.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_mesh.c_R_ComputeLOD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_15__**, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_13__ = type { float }
%struct.TYPE_23__ = type { i32 (float)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32*, i32* }

@tr = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@MOD_MDR = common dso_local global i64 0, align 8
@r_lodscale = common dso_local global %struct.TYPE_13__* null, align 8
@ri = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@r_lodbias = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_ComputeLOD(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %135

17:                                               ; preds = %1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MOD_MDR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %8, align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* null, i32 0, i32 1), align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = ptrtoint i32* %32 to i64
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = bitcast %struct.TYPE_20__* %35 to i32*
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  %50 = bitcast i32* %49 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %9, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call float @RadiusFromBounds(i32 %55, i32 %60)
  store float %61, float* %3, align 4
  br label %88

62:                                               ; preds = %17
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %65, i64 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %7, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i64 %75
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %7, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call float @RadiusFromBounds(i32 %81, i32 %86)
  store float %87, float* %3, align 4
  br label %88

88:                                               ; preds = %62, %23
  %89 = load float, float* %3, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call float @ProjectRadius(float %89, i32 %93)
  store float %94, float* %6, align 4
  %95 = fcmp une float %94, 0.000000e+00
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_lodscale, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load float, float* %98, align 4
  store float %99, float* %5, align 4
  %100 = load float, float* %5, align 4
  %101 = fcmp ogt float %100, 2.000000e+01
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store float 2.000000e+01, float* %5, align 4
  br label %103

103:                                              ; preds = %102, %96
  %104 = load float, float* %6, align 4
  %105 = load float, float* %5, align 4
  %106 = fmul float %104, %105
  %107 = fsub float 1.000000e+00, %106
  store float %107, float* %4, align 4
  br label %109

108:                                              ; preds = %88
  store float 0.000000e+00, float* %4, align 4
  br label %109

109:                                              ; preds = %108, %103
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sitofp i32 %112 to float
  %114 = load float, float* %4, align 4
  %115 = fmul float %114, %113
  store float %115, float* %4, align 4
  %116 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ri, i32 0, i32 0), align 8
  %117 = load float, float* %4, align 4
  %118 = call i32 %116(float %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %134

122:                                              ; preds = %109
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %128, %122
  br label %134

134:                                              ; preds = %133, %121
  br label %135

135:                                              ; preds = %134, %16
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_lodbias, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %143, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %135
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %148, %135
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local float @RadiusFromBounds(i32, i32) #1

declare dso_local float @ProjectRadius(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
