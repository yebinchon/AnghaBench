; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_monitor.c_outputHandleMode.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_monitor.c_outputHandleMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct._GLFWmonitor = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { double, double, i32, i32, i32, i32 }

@WL_OUTPUT_MODE_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i32, double, double, double)* @outputHandleMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outputHandleMode(i8* %0, %struct.wl_output* %1, i32 %2, double %3, double %4, double %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct._GLFWmonitor*, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_output* %1, %struct.wl_output** %8, align 8
  store i32 %2, i32* %9, align 4
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct._GLFWmonitor*
  store %struct._GLFWmonitor* %16, %struct._GLFWmonitor** %13, align 8
  %17 = load double, double* %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store double %17, double* %18, align 8
  %19 = load double, double* %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store double %19, double* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32 8, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i32 8, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i32 8, i32* %23, align 8
  %24 = load double, double* %12, align 8
  %25 = fdiv double %24, 1.000000e+03
  %26 = call i64 @round(double %25)
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  %29 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %30 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %34 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %37 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 32
  %41 = trunc i64 %40 to i32
  %42 = call %struct.TYPE_6__* @realloc(%struct.TYPE_6__* %35, i32 %41)
  %43 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %44 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %43, i32 0, i32 2
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %46 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %49 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %52
  %54 = bitcast %struct.TYPE_6__* %53 to i8*
  %55 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 32, i1 false)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @WL_OUTPUT_MODE_CURRENT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %6
  %61 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %62 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %66 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %6
  ret void
}

declare dso_local i64 @round(double) #1

declare dso_local %struct.TYPE_6__* @realloc(%struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
