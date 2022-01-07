; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_CalcViewValues.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_CalcViewValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i64, i32, %struct.TYPE_9__, i64, i32, i64, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32*, i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@cg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@M_PI = common dso_local global i32 0, align 4
@cg_cameraOrbit = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@cg_cameraOrbitDelay = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg_thirdPersonAngle = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@cg_errorDecay = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@RDF_HYPERSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CG_CalcViewValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_CalcViewValues() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = call i32 @memset(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4), i32 0, i32 12)
  %6 = call i32 (...) @CG_CalcVrect()
  store %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 11), %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PM_INTERMISSION, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 2), align 4
  %17 = call i32 @VectorCopy(i32 %15, i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 6), align 8
  %22 = call i32 @VectorCopy(i32 %20, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 6), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 1), align 4
  %25 = call i32 @AnglesToAxis(i32 %23, i32 %24)
  %26 = call i32 (...) @CG_CalcFov()
  store i32 %26, i32* %1, align 4
  br label %144

27:                                               ; preds = %0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 128
  %32 = ashr i32 %31, 7
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0), align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 127
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.270000e+02
  %39 = load i32, i32* @M_PI, align 4
  %40 = sitofp i32 %39 to double
  %41 = fmul double %38, %40
  %42 = fptosi double %41 to i32
  %43 = call i32 @sin(i32 %42)
  %44 = call i32 @fabs(i32 %43)
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 10), align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %49, %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %60, %65
  %67 = add nsw i32 %55, %66
  %68 = call i32 @sqrt(i32 %67)
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 9), align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 2), align 4
  %73 = call i32 @VectorCopy(i32 %71, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 6), align 8
  %78 = call i32 @VectorCopy(i32 %76, i32 %77)
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_cameraOrbit, i32 0, i32 1), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %27
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 2), align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_cameraOrbitDelay, i32 0, i32 0), align 8
  %88 = add nsw i64 %86, %87
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 2), align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_cameraOrbit, i32 0, i32 0), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_thirdPersonAngle, i32 0, i32 0), align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_thirdPersonAngle, i32 0, i32 0), align 4
  br label %94

94:                                               ; preds = %85, %81
  br label %95

95:                                               ; preds = %94, %27
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_errorDecay, i32 0, i32 0), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 3), align 8
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %99, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_errorDecay, i32 0, i32 0), align 4
  %105 = load i32, i32* %3, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_errorDecay, i32 0, i32 0), align 4
  %108 = sdiv i32 %106, %107
  %109 = sitofp i32 %108 to float
  store float %109, float* %4, align 4
  %110 = load float, float* %4, align 4
  %111 = fcmp ogt float %110, 0.000000e+00
  br i1 %111, label %112, label %121

112:                                              ; preds = %98
  %113 = load float, float* %4, align 4
  %114 = fcmp olt float %113, 1.000000e+00
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 2), align 4
  %117 = load float, float* %4, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 8), align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 2), align 4
  %120 = call i32 @VectorMA(i32 %116, float %117, i32 %118, i32 %119)
  br label %122

121:                                              ; preds = %112, %98
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 3), align 8
  br label %122

122:                                              ; preds = %121, %115
  br label %123

123:                                              ; preds = %122, %95
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 7), align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (...) @CG_OffsetThirdPersonView()
  br label %130

128:                                              ; preds = %123
  %129 = call i32 (...) @CG_OffsetFirstPersonView()
  br label %130

130:                                              ; preds = %128, %126
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 6), align 8
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 1), align 4
  %133 = call i32 @AnglesToAxis(i32 %131, i32 %132)
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 5), align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %138 = load i32, i32* @RDF_HYPERSPACE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 0), align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4, i32 0), align 4
  br label %142

142:                                              ; preds = %136, %130
  %143 = call i32 (...) @CG_CalcFov()
  store i32 %143, i32* %1, align 4
  br label %144

144:                                              ; preds = %142, %12
  %145 = load i32, i32* %1, align 4
  ret i32 %145
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @CG_CalcVrect(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AnglesToAxis(i32, i32) #1

declare dso_local i32 @CG_CalcFov(...) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @CG_OffsetThirdPersonView(...) #1

declare dso_local i32 @CG_OffsetFirstPersonView(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
