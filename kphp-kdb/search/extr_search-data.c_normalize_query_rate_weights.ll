; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_normalize_query_rate_weights.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_normalize_query_rate_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i32 }
%struct.TYPE_3__ = type { double }

@QRP = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@QRW = common dso_local global %struct.TYPE_3__* null, align 8
@query_rate_weights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @normalize_query_rate_weights() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @QRP, i32 0, i32 1), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @QRP, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %9 = load i32, i32* @query_rate_weights, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @query_rate_weights, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store double %7, double* %13, align 8
  br label %14

14:                                               ; preds = %6, %0
  %15 = load i32, i32* @query_rate_weights, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %71

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @query_rate_weights, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = load double, double* %3, align 8
  %31 = fadd double %30, %29
  store double %31, double* %3, align 8
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load double, double* %3, align 8
  %37 = fcmp olt double %36, 1.000000e-09
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* @query_rate_weights, align 4
  store i32 0, i32* %1, align 4
  br label %71

39:                                               ; preds = %35
  %40 = load double, double* %3, align 8
  %41 = fdiv double 1.000000e+00, %40
  store double %41, double* %3, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %55, %39
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @query_rate_weights, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load double, double* %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load double, double* %52, align 8
  %54 = fmul double %53, %47
  store double %54, double* %52, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @QRP, i32 0, i32 1), align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @query_rate_weights, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* @query_rate_weights, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %65 = load i32, i32* @query_rate_weights, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  store double %69, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @QRP, i32 0, i32 0), align 8
  br label %70

70:                                               ; preds = %61, %58
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %70, %38, %17
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
