; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_scalbn.c_scalbn.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_scalbn.c_scalbn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@two54 = common dso_local global double 0.000000e+00, align 8
@tiny = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@twom54 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @scalbn(double %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load double, double* %4, align 8
  %12 = call i32 @__HI(double %11)
  store i32 %12, i32* %7, align 4
  %13 = load double, double* %4, align 8
  %14 = call i32 @__LO(double %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 2146435072
  %17 = ashr i32 %16, 20
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 2147483647
  %24 = or i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load double, double* %4, align 8
  store double %27, double* %3, align 8
  br label %113

28:                                               ; preds = %20
  %29 = load double, double* @two54, align 8
  %30 = load double, double* %4, align 8
  %31 = fmul double %30, %29
  store double %31, double* %4, align 8
  %32 = load double, double* %4, align 8
  %33 = call i32 @__HI(double %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 2146435072
  %36 = ashr i32 %35, 20
  %37 = sub nsw i32 %36, 54
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, -50000
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load double, double* @tiny, align 8
  %42 = load double, double* %4, align 8
  %43 = fmul double %41, %42
  store double %43, double* %3, align 8
  br label %113

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 2047
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load double, double* %4, align 8
  %50 = load double, double* %4, align 8
  %51 = fadd double %49, %50
  store double %51, double* %3, align 8
  br label %113

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 2046
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load double, double* @huge, align 8
  %60 = load double, double* @huge, align 8
  %61 = load double, double* %4, align 8
  %62 = call double @llvm.copysign.f64(double %60, double %61)
  %63 = fmul double %59, %62
  store double %63, double* %3, align 8
  br label %113

64:                                               ; preds = %52
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load double, double* %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store double %68, double* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, -2146435073
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 20
  %74 = or i32 %71, %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %78 = load double, double* %77, align 8
  store double %78, double* %3, align 8
  br label %113

79:                                               ; preds = %64
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, -54
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 50000
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load double, double* @huge, align 8
  %87 = load double, double* @huge, align 8
  %88 = load double, double* %4, align 8
  %89 = call double @llvm.copysign.f64(double %87, double %88)
  %90 = fmul double %86, %89
  store double %90, double* %3, align 8
  br label %113

91:                                               ; preds = %82
  %92 = load double, double* @tiny, align 8
  %93 = load double, double* @tiny, align 8
  %94 = load double, double* %4, align 8
  %95 = call double @llvm.copysign.f64(double %93, double %94)
  %96 = fmul double %92, %95
  store double %96, double* %3, align 8
  br label %113

97:                                               ; preds = %79
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 54
  store i32 %99, i32* %6, align 4
  %100 = load double, double* %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store double %100, double* %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, -2146435073
  %104 = load i32, i32* %6, align 4
  %105 = shl i32 %104, 20
  %106 = or i32 %103, %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %110 = load double, double* %109, align 8
  %111 = load double, double* @twom54, align 8
  %112 = fmul double %110, %111
  store double %112, double* %3, align 8
  br label %113

113:                                              ; preds = %97, %91, %85, %67, %58, %48, %40, %26
  %114 = load double, double* %3, align 8
  ret double %114
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
