; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_helper_process_double.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_helper_process_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@JERRY_ERROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"The number is NaN.\00", align 1
@JERRYX_ARG_NO_CLAMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"The number is out of range.\00", align 1
@JERRYX_ARG_ROUND = common dso_local global i64 0, align 8
@JERRYX_ARG_FLOOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, double, double, i64, i64)* @jerryx_arg_helper_process_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jerryx_arg_helper_process_double(double* %0, double %1, double %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = bitcast %struct.TYPE_3__* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %3, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %4, i64* %13, align 8
  store double* %0, double** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  %14 = load double*, double** %8, align 8
  %15 = load double, double* %14, align 8
  %16 = call i64 @isnan(double %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %20 = call i32 @jerry_create_error(i32 %19, i32* bitcast ([19 x i8]* @.str to i32*))
  store i32 %20, i32* %6, align 4
  br label %105

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @JERRYX_ARG_NO_CLAMP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load double*, double** %8, align 8
  %28 = load double, double* %27, align 8
  %29 = load double, double* %10, align 8
  %30 = fcmp ogt double %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load double*, double** %8, align 8
  %33 = load double, double* %32, align 8
  %34 = load double, double* %9, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %38 = call i32 @jerry_create_error(i32 %37, i32* bitcast ([28 x i8]* @.str.1 to i32*))
  store i32 %38, i32* %6, align 4
  br label %105

39:                                               ; preds = %31
  br label %65

40:                                               ; preds = %21
  %41 = load double*, double** %8, align 8
  %42 = load double, double* %41, align 8
  %43 = load double, double* %9, align 8
  %44 = fcmp olt double %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load double, double* %9, align 8
  br label %50

47:                                               ; preds = %40
  %48 = load double*, double** %8, align 8
  %49 = load double, double* %48, align 8
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi double [ %46, %45 ], [ %49, %47 ]
  %52 = load double*, double** %8, align 8
  store double %51, double* %52, align 8
  %53 = load double*, double** %8, align 8
  %54 = load double, double* %53, align 8
  %55 = load double, double* %10, align 8
  %56 = fcmp ogt double %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load double, double* %10, align 8
  br label %62

59:                                               ; preds = %50
  %60 = load double*, double** %8, align 8
  %61 = load double, double* %60, align 8
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi double [ %58, %57 ], [ %61, %59 ]
  %64 = load double*, double** %8, align 8
  store double %63, double* %64, align 8
  br label %65

65:                                               ; preds = %62, %39
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @JERRYX_ARG_ROUND, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load double*, double** %8, align 8
  %72 = load double, double* %71, align 8
  %73 = fcmp oge double %72, 0.000000e+00
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load double*, double** %8, align 8
  %76 = load double, double* %75, align 8
  %77 = fadd double %76, 5.000000e-01
  %78 = call double @llvm.floor.f64(double %77)
  br label %84

79:                                               ; preds = %70
  %80 = load double*, double** %8, align 8
  %81 = load double, double* %80, align 8
  %82 = fsub double %81, 5.000000e-01
  %83 = call double @llvm.ceil.f64(double %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi double [ %78, %74 ], [ %83, %79 ]
  %86 = load double*, double** %8, align 8
  store double %85, double* %86, align 8
  br label %103

87:                                               ; preds = %65
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @JERRYX_ARG_FLOOR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load double*, double** %8, align 8
  %94 = load double, double* %93, align 8
  %95 = call double @llvm.floor.f64(double %94)
  %96 = load double*, double** %8, align 8
  store double %95, double* %96, align 8
  br label %102

97:                                               ; preds = %87
  %98 = load double*, double** %8, align 8
  %99 = load double, double* %98, align 8
  %100 = call double @llvm.ceil.f64(double %99)
  %101 = load double*, double** %8, align 8
  store double %100, double* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %84
  %104 = call i32 (...) @jerry_create_undefined()
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %36, %18
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @jerry_create_error(i32, i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
