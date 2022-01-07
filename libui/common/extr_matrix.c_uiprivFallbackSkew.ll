; ModuleID = '/home/carl/AnghaBench/libui/common/extr_matrix.c_uiprivFallbackSkew.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_matrix.c_uiprivFallbackSkew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivFallbackSkew(%struct.TYPE_6__* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %12 = call i32 @uiDrawMatrixSetIdentity(%struct.TYPE_6__* %11)
  %13 = load double, double* %10, align 8
  %14 = call double @tan(double %13) #3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store double %14, double* %15, align 8
  %16 = load double, double* %9, align 8
  %17 = call double @tan(double %16) #3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store double %17, double* %18, align 8
  %19 = load double, double* %8, align 8
  %20 = fneg double %19
  %21 = load double, double* %9, align 8
  %22 = call double @tan(double %21) #3
  %23 = fmul double %20, %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store double %23, double* %24, align 8
  %25 = load double, double* %7, align 8
  %26 = fneg double %25
  %27 = load double, double* %10, align 8
  %28 = call double @tan(double %27) #3
  %29 = fmul double %26, %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store double %29, double* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = call i32 @uiDrawMatrixMultiply(%struct.TYPE_6__* %31, %struct.TYPE_6__* %11)
  ret void
}

declare dso_local i32 @uiDrawMatrixSetIdentity(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare dso_local double @tan(double) #2

declare dso_local i32 @uiDrawMatrixMultiply(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
