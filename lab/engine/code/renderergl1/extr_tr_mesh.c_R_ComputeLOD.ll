; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_mesh.c_R_ComputeLOD.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_mesh.c_R_ComputeLOD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_15__**, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { float }
%struct.TYPE_23__ = type { i32 (float)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32*, i32* }

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
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
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
  br label %144

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
  %27 = inttoptr i64 %26 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %8, align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* null, i32 0, i32 1), align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = ptrtoint i32* %32 to i64
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = bitcast %struct.TYPE_19__* %35 to i32*
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
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
  %50 = bitcast i32* %49 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %9, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call float @RadiusFromBounds(i32 %55, i32 %60)
  store float %61, float* %3, align 4
  br label %97

62:                                               ; preds = %17
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %65, i64 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = bitcast %struct.TYPE_15__* %67 to i8*
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %71, i64 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %68, i64 %76
  %78 = bitcast i8* %77 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %7, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i64 %84
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %7, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call float @RadiusFromBounds(i32 %90, i32 %95)
  store float %96, float* %3, align 4
  br label %97

97:                                               ; preds = %62, %23
  %98 = load float, float* %3, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call float @ProjectRadius(float %98, i32 %102)
  store float %103, float* %6, align 4
  %104 = fcmp une float %103, 0.000000e+00
  br i1 %104, label %105, label %117

105:                                              ; preds = %97
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_lodscale, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 4
  store float %108, float* %5, align 4
  %109 = load float, float* %5, align 4
  %110 = fcmp ogt float %109, 2.000000e+01
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store float 2.000000e+01, float* %5, align 4
  br label %112

112:                                              ; preds = %111, %105
  %113 = load float, float* %6, align 4
  %114 = load float, float* %5, align 4
  %115 = fmul float %113, %114
  %116 = fsub float 1.000000e+00, %115
  store float %116, float* %4, align 4
  br label %118

117:                                              ; preds = %97
  store float 0.000000e+00, float* %4, align 4
  br label %118

118:                                              ; preds = %117, %112
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sitofp i32 %121 to float
  %123 = load float, float* %4, align 4
  %124 = fmul float %123, %122
  store float %124, float* %4, align 4
  %125 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ri, i32 0, i32 0), align 8
  %126 = load float, float* %4, align 4
  %127 = call i32 %125(float %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  br label %143

131:                                              ; preds = %118
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %132, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %137, %131
  br label %143

143:                                              ; preds = %142, %130
  br label %144

144:                                              ; preds = %143, %16
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_lodbias, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %152, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %144
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %157, %144
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %165, %162
  %167 = load i32, i32* %10, align 4
  ret i32 %167
}

declare dso_local float @RadiusFromBounds(i32, i32) #1

declare dso_local float @ProjectRadius(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
