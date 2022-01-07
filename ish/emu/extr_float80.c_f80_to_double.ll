; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_to_double.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.double_bits = type { i32, i64, i32 }

@NAN = common dso_local global double 0.000000e+00, align 8
@EXP_SPECIAL = common dso_local global i64 0, align 8
@EXP64_SPECIAL = common dso_local global i32 0, align 4
@EXP64_MAX = common dso_local global i32 0, align 4
@INFINITY = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @f80_to_double(i64 %0, i64 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.double_bits, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  %13 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @f80_is_supported(i64 %15, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load double, double* @NAN, align 8
  store double %21, double* %3, align 8
  br label %100

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %5, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @unbias(i64 %27)
  %29 = add nsw i32 %28, 1023
  store i32 %29, i32* %6, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EXP_SPECIAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @EXP64_SPECIAL, align 4
  store i32 %35, i32* %6, align 4
  br label %52

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @EXP64_MAX, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load double, double* @INFINITY, align 8
  br label %49

46:                                               ; preds = %40
  %47 = load double, double* @INFINITY, align 8
  %48 = fneg double %47
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi double [ %45, %44 ], [ %48, %46 ]
  store double %50, double* %3, align 8
  br label %100

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 0, %59
  %61 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call { i64, i64 } @f80_shift_right(i64 %63, i64 %65, i32 %60)
  %67 = bitcast %struct.TYPE_6__* %7 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = extractvalue { i64, i64 } %66, 0
  store i64 %69, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = extractvalue { i64, i64 } %66, 1
  store i64 %71, i64* %70, align 8
  %72 = bitcast %struct.TYPE_6__* %4 to i8*
  %73 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @unbias(i64 %75)
  %77 = add nsw i32 %76, 1023
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %55, %52
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %5, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @u128_shift_right_round(i32 %82, i32 11, i32 %84)
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = and i64 %86, 9007199254740992
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load i64, i64* %8, align 8
  %91 = lshr i64 %90, 1
  store i64 %91, i64* %8, align 8
  %92 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %78
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %5, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  %98 = call i32 @memcpy(double* %9, %struct.double_bits* %5, i32 24)
  %99 = load double, double* %9, align 8
  store double %99, double* %3, align 8
  br label %100

100:                                              ; preds = %95, %49, %20
  %101 = load double, double* %3, align 8
  ret double %101
}

declare dso_local i32 @f80_is_supported(i64, i64) #1

declare dso_local i32 @unbias(i64) #1

declare dso_local { i64, i64 } @f80_shift_right(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @u128_shift_right_round(i32, i32, i32) #1

declare dso_local i32 @memcpy(double*, %struct.double_bits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
