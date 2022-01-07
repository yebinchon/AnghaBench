; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_compute_max_uid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_compute_max_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msgs_bytes = common dso_local global i32 0, align 4
@total_packed_bytes = common dso_local global i64 0, align 8
@max_uid = common dso_local global i32 0, align 4
@UserSearchWords = common dso_local global double* null, align 8
@UserMsgCnt = common dso_local global i32* null, align 8
@extra_ints_num = common dso_local global i32 0, align 4
@UserMsgBytes = common dso_local global double* null, align 8
@UserMsgDel = common dso_local global i32* null, align 8
@UserMsgExtras = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_max_uid(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  %9 = load i32, i32* @msgs_bytes, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* @total_packed_bytes, align 8
  %13 = sitofp i64 %12 to double
  %14 = load i32, i32* @msgs_bytes, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %13, %15
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi double [ %16, %11 ], [ 1.000000e+00, %17 ]
  store double %19, double* %7, align 8
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %90, %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @max_uid, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load double, double* %5, align 8
  %27 = load double, double* %6, align 8
  %28 = fadd double %26, %27
  %29 = load double, double* %4, align 8
  %30 = fcmp ole double %28, %29
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %93

33:                                               ; preds = %31
  %34 = load double, double* %6, align 8
  %35 = load double*, double** @UserSearchWords, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fmul double %39, 1.600000e+01
  %41 = fcmp olt double %34, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load double*, double** @UserSearchWords, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = fmul double %47, 1.600000e+01
  store double %48, double* %6, align 8
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i32*, i32** @UserMsgCnt, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sitofp i32 %54 to double
  %56 = load i32, i32* @extra_ints_num, align 4
  %57 = mul nsw i32 4, %56
  %58 = sext i32 %57 to i64
  %59 = add i64 4, %58
  %60 = uitofp i64 %59 to double
  %61 = fadd double %60, 2.200000e+00
  %62 = fmul double %55, %61
  %63 = load double*, double** @UserMsgBytes, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  %68 = load double, double* %7, align 8
  %69 = fmul double %67, %68
  %70 = fadd double %62, %69
  %71 = load i32*, i32** @UserMsgDel, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = uitofp i64 %77 to double
  %79 = fadd double %70, %78
  %80 = load i32*, i32** @UserMsgExtras, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 4
  %86 = sitofp i32 %85 to double
  %87 = fadd double %79, %86
  %88 = load double, double* %5, align 8
  %89 = fadd double %88, %87
  store double %89, double* %5, align 8
  br label %90

90:                                               ; preds = %49
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %21

93:                                               ; preds = %31
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
