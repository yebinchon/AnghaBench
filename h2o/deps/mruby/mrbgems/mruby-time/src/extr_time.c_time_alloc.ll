; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-time/src/extr_time.c_time_alloc.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-time/src/extr_time.c_time_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_time = type { double, i64, i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%S out of Time range\00", align 1
@INT32_MAX = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_time* (i32*, double, double, i32)* @time_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_time* @time_alloc(i32* %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrb_time*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load double, double* %6, align 8
  %15 = fptosi double %14 to i32
  %16 = call i32 @mrb_check_num_exact(i32* %13, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load double, double* %7, align 8
  %19 = fptosi double %18 to i32
  %20 = call i32 @mrb_check_num_exact(i32* %17, i32 %19)
  %21 = load double, double* %6, align 8
  %22 = load i64, i64* @INT64_MAX, align 8
  %23 = sitofp i64 %22 to double
  %24 = fcmp ogt double %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* @INT64_MIN, align 8
  %27 = sitofp i64 %26 to double
  %28 = load double, double* %6, align 8
  %29 = fcmp ogt double %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %4
  br label %48

31:                                               ; preds = %25
  %32 = load double, double* %6, align 8
  %33 = fptosi double %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load double, double* %6, align 8
  %35 = fcmp ogt double %34, 0.000000e+00
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36, %31
  %40 = load double, double* %6, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8
  %44 = sitofp i64 %43 to double
  %45 = load double, double* %6, align 8
  %46 = fcmp ogt double %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load double, double* %6, align 8
  %53 = call i32 @mrb_float_value(i32* %51, double %52)
  %54 = call i32 @mrb_raisef(i32* %49, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48, %42, %39
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @mrb_malloc(i32* %56, i32 24)
  %58 = inttoptr i64 %57 to %struct.mrb_time*
  store %struct.mrb_time* %58, %struct.mrb_time** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sitofp i64 %59 to double
  %61 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %62 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %61, i32 0, i32 0
  store double %60, double* %62, align 8
  %63 = load double, double* %6, align 8
  %64 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %65 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fsub double %63, %66
  %68 = fmul double %67, 1.000000e+06
  %69 = load double, double* %7, align 8
  %70 = fadd double %68, %69
  %71 = call i64 @llround(double %70)
  %72 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %73 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %75 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %55
  %79 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %80 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @NDIV(i64 %81, i32 1000000)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = mul nsw i64 %83, 1000000
  %85 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %86 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* %11, align 8
  %90 = sitofp i64 %89 to double
  %91 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %92 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = fadd double %93, %90
  store double %94, double* %92, align 8
  br label %118

95:                                               ; preds = %55
  %96 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %97 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %98, 1000000
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %102 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sdiv i64 %103, 1000000
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = mul nsw i64 %105, 1000000
  %107 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %108 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %12, align 8
  %112 = sitofp i64 %111 to double
  %113 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %114 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %113, i32 0, i32 0
  %115 = load double, double* %114, align 8
  %116 = fadd double %115, %112
  store double %116, double* %114, align 8
  br label %117

117:                                              ; preds = %100, %95
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %121 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %124 = call i32 @time_update_datetime(i32* %122, %struct.mrb_time* %123)
  %125 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  ret %struct.mrb_time* %125
}

declare dso_local i32 @mrb_check_num_exact(i32*, i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_float_value(i32*, double) #1

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i64 @llround(double) #1

declare dso_local i64 @NDIV(i64, i32) #1

declare dso_local i32 @time_update_datetime(i32*, %struct.mrb_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
