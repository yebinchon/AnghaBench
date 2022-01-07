; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_sample_input.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_sample_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float }
%struct.TYPE_4__ = type { float, float }

@cursor_method = common dso_local global i64 0, align 8
@cursor_sync_query = common dso_local global i64 0, align 8
@cursor_new = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@cursor_pos = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@cursor_vel = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sample_input(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  store float 2.500000e-01, float* %3, align 4
  %6 = load i64, i64* @cursor_method, align 8
  %7 = load i64, i64* @cursor_sync_query, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @glfwGetCursorPos(i32* %10, double* %4, double* %5)
  %12 = load double, double* %4, align 8
  %13 = fptrunc double %12 to float
  store float %13, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cursor_new, i32 0, i32 0), align 4
  %14 = load double, double* %5, align 8
  %15 = fptrunc double %14 to float
  store float %15, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cursor_new, i32 0, i32 1), align 4
  br label %16

16:                                               ; preds = %9, %1
  %17 = load float, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cursor_new, i32 0, i32 0), align 4
  %18 = load float, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cursor_pos, i32 0, i32 0), align 4
  %19 = fsub float %17, %18
  %20 = load float, float* %3, align 4
  %21 = fmul float %19, %20
  %22 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cursor_vel, i32 0, i32 0), align 4
  %23 = load float, float* %3, align 4
  %24 = fsub float 1.000000e+00, %23
  %25 = fmul float %22, %24
  %26 = fadd float %21, %25
  store float %26, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cursor_vel, i32 0, i32 0), align 4
  %27 = load float, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cursor_new, i32 0, i32 1), align 4
  %28 = load float, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cursor_pos, i32 0, i32 1), align 4
  %29 = fsub float %27, %28
  %30 = load float, float* %3, align 4
  %31 = fmul float %29, %30
  %32 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cursor_vel, i32 0, i32 1), align 4
  %33 = load float, float* %3, align 4
  %34 = fsub float 1.000000e+00, %33
  %35 = fmul float %32, %34
  %36 = fadd float %31, %35
  store float %36, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cursor_vel, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_5__* @cursor_pos to i8*), i8* align 4 bitcast (%struct.TYPE_5__* @cursor_new to i8*), i64 8, i1 false)
  ret void
}

declare dso_local i32 @glfwGetCursorPos(i32*, double*, double*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
