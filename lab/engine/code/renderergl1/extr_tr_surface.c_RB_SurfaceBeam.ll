; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_RB_SurfaceBeam.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_RB_SurfaceBeam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i64* }
%struct.TYPE_7__ = type { i32 }

@backEnd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@NUM_BEAM_SEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RB_SurfaceBeam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_SurfaceBeam() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [6 x i64*], align 16
  %7 = alloca [6 x i64*], align 16
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %1, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  store i64 %51, i64* %53, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %60, i64* %64, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load i64*, i64** %4, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  store i64 %71, i64* %73, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  store i64 %71, i64* %75, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = load i64*, i64** %4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  store i64 %82, i64* %84, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  store i64 %82, i64* %86, align 8
  %87 = load i64*, i64** %5, align 8
  %88 = call i64 @VectorNormalize(i64* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %0
  br label %156

91:                                               ; preds = %0
  %92 = load i64*, i64** %3, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = call i32 @PerpendicularVector(i64* %92, i64* %93)
  %95 = load i64*, i64** %3, align 8
  %96 = load i64*, i64** %3, align 8
  %97 = call i32 @VectorScale(i64* %95, i32 4, i64* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %122, %91
  %99 = load i32, i32* %2, align 4
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %125

101:                                              ; preds = %98
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [6 x i64*], [6 x i64*]* %6, i64 0, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = load i64*, i64** %5, align 8
  %107 = load i64*, i64** %3, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sitofp i32 %108 to double
  %110 = fmul double 6.000000e+01, %109
  %111 = call i32 @RotatePointAroundVector(i64* %105, i64* %106, i64* %107, double %110)
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [6 x i64*], [6 x i64*]* %6, i64 0, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = load i64*, i64** %4, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [6 x i64*], [6 x i64*]* %7, i64 0, i64 %118
  %120 = load i64*, i64** %119, align 8
  %121 = call i32 @VectorAdd(i64* %115, i64* %116, i64* %120)
  br label %122

122:                                              ; preds = %101
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  br label %98

125:                                              ; preds = %98
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %127 = call i32 @GL_Bind(i32 %126)
  %128 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %129 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @GL_State(i32 %130)
  %132 = call i32 @qglColor3f(i32 1, i32 0, i32 0)
  %133 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %134 = call i32 @qglBegin(i32 %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %151, %125
  %136 = load i32, i32* %2, align 4
  %137 = icmp sle i32 %136, 6
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i32, i32* %2, align 4
  %140 = srem i32 %139, 6
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [6 x i64*], [6 x i64*]* %6, i64 0, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = call i32 @qglVertex3fv(i64* %143)
  %145 = load i32, i32* %2, align 4
  %146 = srem i32 %145, 6
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [6 x i64*], [6 x i64*]* %7, i64 0, i64 %147
  %149 = load i64*, i64** %148, align 8
  %150 = call i32 @qglVertex3fv(i64* %149)
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %2, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %2, align 4
  br label %135

154:                                              ; preds = %135
  %155 = call i32 (...) @qglEnd()
  br label %156

156:                                              ; preds = %154, %90
  ret void
}

declare dso_local i64 @VectorNormalize(i64*) #1

declare dso_local i32 @PerpendicularVector(i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, i32, i64*) #1

declare dso_local i32 @RotatePointAroundVector(i64*, i64*, i64*, double) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglColor3f(i32, i32, i32) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglVertex3fv(i64*) #1

declare dso_local i32 @qglEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
