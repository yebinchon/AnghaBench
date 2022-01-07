; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c__glfwInputCursorPos.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c__glfwInputCursorPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, double, double)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputCursorPos(%struct.TYPE_5__* %0, double %1, double %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = load double, double* %5, align 8
  %11 = fcmp oeq double %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = load double, double* %6, align 8
  %17 = fcmp oeq double %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %41

19:                                               ; preds = %12, %3
  %20 = load double, double* %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store double %20, double* %22, align 8
  %23 = load double, double* %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store double %23, double* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i32*, double, double)*, i32 (i32*, double, double)** %28, align 8
  %30 = icmp ne i32 (i32*, double, double)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (i32*, double, double)*, i32 (i32*, double, double)** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = bitcast %struct.TYPE_5__* %36 to i32*
  %38 = load double, double* %5, align 8
  %39 = load double, double* %6, align 8
  %40 = call i32 %35(i32* %37, double %38, double %39)
  br label %41

41:                                               ; preds = %18, %31, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
