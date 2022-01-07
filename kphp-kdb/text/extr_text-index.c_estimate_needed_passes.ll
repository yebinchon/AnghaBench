; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_estimate_needed_passes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_estimate_needed_passes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msgs_bytes = common dso_local global i32 0, align 4
@total_packed_bytes = common dso_local global i64 0, align 8
@dyn_top = common dso_local global double 0.000000e+00, align 8
@dyn_cur = common dso_local global double 0.000000e+00, align 8
@temp_binlog_directory = common dso_local global i64 0, align 8
@max_uid = common dso_local global i32 0, align 4
@UserSearchWords = common dso_local global double* null, align 8
@UserMsgCnt = common dso_local global i32* null, align 8
@extra_ints_num = common dso_local global i32 0, align 4
@UserMsgBytes = common dso_local global double* null, align 8
@UserMsgDel = common dso_local global i32* null, align 8
@UserMsgExtras = common dso_local global i32* null, align 8
@pass_threshold = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @estimate_needed_passes() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double 0.000000e+00, double* %1, align 8
  %8 = load i32, i32* @msgs_bytes, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i64, i64* @total_packed_bytes, align 8
  %12 = sitofp i64 %11 to double
  %13 = load i32, i32* @msgs_bytes, align 4
  %14 = sitofp i32 %13 to double
  %15 = fdiv double %12, %14
  br label %17

16:                                               ; preds = %0
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi double [ %15, %10 ], [ 1.000000e+00, %16 ]
  store double %18, double* %4, align 8
  %19 = load double, double* @dyn_top, align 8
  %20 = load double, double* @dyn_cur, align 8
  %21 = fsub double %19, %20
  %22 = load i64, i64* @temp_binlog_directory, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, double 5.000000e-01, double 8.000000e-01
  %26 = fmul double %21, %25
  store double %26, double* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %106, %17
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @max_uid, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %112

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  store double 0.000000e+00, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  br label %34

34:                                               ; preds = %103, %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @max_uid, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load double, double* %3, align 8
  %40 = load double, double* %2, align 8
  %41 = fadd double %39, %40
  %42 = load double, double* %5, align 8
  %43 = fcmp olt double %41, %42
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br i1 %45, label %46, label %106

46:                                               ; preds = %44
  %47 = load double, double* %2, align 8
  %48 = load double*, double** @UserSearchWords, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fmul double %52, 1.600000e+01
  %54 = fcmp olt double %47, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load double*, double** @UserSearchWords, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %60, 1.600000e+01
  store double %61, double* %2, align 8
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i32*, i32** @UserMsgCnt, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to double
  %69 = load i32, i32* @extra_ints_num, align 4
  %70 = mul nsw i32 4, %69
  %71 = sext i32 %70 to i64
  %72 = add i64 4, %71
  %73 = uitofp i64 %72 to double
  %74 = fadd double %73, 2.200000e+00
  %75 = fmul double %68, %74
  %76 = load double*, double** @UserMsgBytes, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load double, double* %4, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %75, %82
  %84 = load i32*, i32** @UserMsgDel, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = uitofp i64 %90 to double
  %92 = fadd double %83, %91
  %93 = load i32*, i32** @UserMsgExtras, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 4
  %99 = sitofp i32 %98 to double
  %100 = fadd double %92, %99
  %101 = load double, double* %3, align 8
  %102 = fadd double %101, %100
  store double %102, double* %3, align 8
  br label %103

103:                                              ; preds = %62
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %34

106:                                              ; preds = %44
  %107 = load double, double* %3, align 8
  %108 = load double, double* %2, align 8
  %109 = fadd double %107, %108
  %110 = load double, double* %1, align 8
  %111 = fadd double %110, %109
  store double %111, double* %1, align 8
  br label %27

112:                                              ; preds = %27
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load double, double* %1, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %116, %118
  br label %122

120:                                              ; preds = %112
  %121 = load double, double* %5, align 8
  br label %122

122:                                              ; preds = %120, %115
  %123 = phi double [ %119, %115 ], [ %121, %120 ]
  store double %123, double* @pass_threshold, align 8
  %124 = load double, double* %5, align 8
  %125 = call i32 @check_needed_passes(double %124)
  %126 = load i32, i32* %7, align 4
  %127 = icmp sle i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  br label %130

130:                                              ; preds = %135, %122
  %131 = load double, double* @pass_threshold, align 8
  %132 = call i32 @check_needed_passes(double %131)
  %133 = load i32, i32* %7, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load double, double* @pass_threshold, align 8
  %137 = fmul double %136, 1.010000e+00
  store double %137, double* @pass_threshold, align 8
  %138 = load double, double* @pass_threshold, align 8
  %139 = load double, double* %5, align 8
  %140 = fmul double %139, 1.100000e+00
  %141 = fcmp ole double %138, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  br label %130

144:                                              ; preds = %130
  %145 = load double, double* @pass_threshold, align 8
  %146 = call i32 @check_needed_passes(double %145)
  ret i32 %146
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_needed_passes(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
