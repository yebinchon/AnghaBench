; ModuleID = '/home/carl/AnghaBench/i3/src/extr_resize.c_resize_neighboring_cons.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_resize.c_resize_neighboring_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resize_neighboring_cons(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 1.000000e+02
  %32 = fadd double %28, %31
  store double %32, double* %11, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+02
  %39 = fsub double %35, %38
  store double %39, double* %12, align 8
  br label %59

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  %42 = sitofp i32 %41 to double
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i64 @con_rect_size_in_orientation(%struct.TYPE_7__* %45)
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %42, %47
  store double %48, double* %13, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = load double, double* %13, align 8
  %53 = fadd double %51, %52
  store double %53, double* %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = load double, double* %13, align 8
  %58 = fsub double %56, %57
  store double %58, double* %12, align 8
  br label %59

59:                                               ; preds = %40, %25
  %60 = load double, double* %11, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = call double @percent_for_1px(%struct.TYPE_7__* %61)
  %63 = fcmp olt double %60, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load double, double* %12, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = call double @percent_for_1px(%struct.TYPE_7__* %66)
  %68 = fcmp olt double %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  store i32 0, i32* %5, align 4
  br label %79

70:                                               ; preds = %64
  %71 = load double, double* %11, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store double %71, double* %73, align 8
  %74 = load double, double* %12, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store double %74, double* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = call i32 @con_fix_percent(%struct.TYPE_7__* %77)
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %70, %69
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @con_rect_size_in_orientation(%struct.TYPE_7__*) #1

declare dso_local double @percent_for_1px(%struct.TYPE_7__*) #1

declare dso_local i32 @con_fix_percent(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
