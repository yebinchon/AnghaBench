; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_splitview.c_drawGrid.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_splitview.c_drawGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@__const.drawGrid.eye = private unnamed_addr constant %struct.TYPE_5__ { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, align 4
@__const.drawGrid.up = private unnamed_addr constant %struct.TYPE_5__ { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_LINES = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, i32)* @drawGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawGrid(float %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca { <2 x float>, float }, align 4
  store float %0, float* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = call i32 (...) @glPushMatrix()
  %16 = call i32 @glClearColor(float 0x3FA99999A0000000, float 0x3FA99999A0000000, float 0x3FC99999A0000000, float 0.000000e+00)
  %17 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %18 = call i32 @glClear(i32 %17)
  %19 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_5__* @__const.drawGrid.eye to i8*), i64 12, i1 false)
  %20 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_5__* @__const.drawGrid.up to i8*), i64 12, i1 false)
  %22 = load i64, i64* %8, align 8
  %23 = bitcast { <2 x float>, float }* %12 to i8*
  %24 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 0
  %26 = load <2 x float>, <2 x float>* %25, align 4
  %27 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = bitcast { <2 x float>, float }* %13 to i8*
  %30 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %13, i32 0, i32 0
  %32 = load <2 x float>, <2 x float>* %31, align 4
  %33 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %13, i32 0, i32 1
  %34 = load float, float* %33, align 4
  %35 = bitcast { <2 x float>, float }* %14 to i8*
  %36 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %14, i32 0, i32 0
  %38 = load <2 x float>, <2 x float>* %37, align 4
  %39 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %14, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = call i32 @mat4x4_look_at(i64 %22, <2 x float> %26, float %28, <2 x float> %32, float %34, <2 x float> %38, float %40)
  %42 = load i64, i64* %8, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @glLoadMatrixf(i32* %43)
  %45 = load i32, i32* @GL_FALSE, align 4
  %46 = call i32 @glDepthMask(i32 %45)
  %47 = call i32 @glColor3f(float 0.000000e+00, float 5.000000e-01, float 5.000000e-01)
  %48 = load i32, i32* @GL_LINES, align 4
  %49 = call i32 @glBegin(i32 %48)
  %50 = load float, float* %3, align 4
  %51 = fmul float %50, 5.000000e-01
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sitofp i32 %53 to float
  %55 = fmul float %51, %54
  store float %55, float* %6, align 4
  %56 = load float, float* %3, align 4
  %57 = fneg float %56
  %58 = fmul float %57, 5.000000e-01
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sitofp i32 %60 to float
  %62 = fmul float %58, %61
  store float %62, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %78, %2
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load float, float* %6, align 4
  %69 = fneg float %68
  %70 = load float, float* %7, align 4
  %71 = call i32 @glVertex3f(float %69, float %70, float 0.000000e+00)
  %72 = load float, float* %6, align 4
  %73 = load float, float* %7, align 4
  %74 = call i32 @glVertex3f(float %72, float %73, float 0.000000e+00)
  %75 = load float, float* %3, align 4
  %76 = load float, float* %7, align 4
  %77 = fadd float %76, %75
  store float %77, float* %7, align 4
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load float, float* %3, align 4
  %83 = fneg float %82
  %84 = fmul float %83, 5.000000e-01
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sitofp i32 %86 to float
  %88 = fmul float %84, %87
  store float %88, float* %6, align 4
  %89 = load float, float* %3, align 4
  %90 = fmul float %89, 5.000000e-01
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sitofp i32 %92 to float
  %94 = fmul float %90, %93
  store float %94, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %110, %81
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load float, float* %6, align 4
  %101 = load float, float* %7, align 4
  %102 = fneg float %101
  %103 = call i32 @glVertex3f(float %100, float %102, float 0.000000e+00)
  %104 = load float, float* %6, align 4
  %105 = load float, float* %7, align 4
  %106 = call i32 @glVertex3f(float %104, float %105, float 0.000000e+00)
  %107 = load float, float* %3, align 4
  %108 = load float, float* %6, align 4
  %109 = fadd float %108, %107
  store float %109, float* %6, align 4
  br label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %95

113:                                              ; preds = %95
  %114 = call i32 (...) @glEnd()
  %115 = load i32, i32* @GL_TRUE, align 4
  %116 = call i32 @glDepthMask(i32 %115)
  %117 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mat4x4_look_at(i64, <2 x float>, float, <2 x float>, float, <2 x float>, float) #1

declare dso_local i32 @glLoadMatrixf(i32*) #1

declare dso_local i32 @glDepthMask(i32) #1

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
