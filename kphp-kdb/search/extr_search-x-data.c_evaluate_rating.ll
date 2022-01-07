; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_evaluate_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_evaluate_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double (%struct.item*, %struct.TYPE_3__*)* }
%struct.item = type { double, double, double }

@sqr_word_title_weight = common dso_local global double 0.000000e+00, align 8
@word_title_weight_word_text_weight = common dso_local global double 0.000000e+00, align 8
@sqr_word_text_weight = common dso_local global double 0.000000e+00, align 8
@QRW = common dso_local global %struct.TYPE_3__* null, align 8
@query_rate_weights = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.item*, double)* @evaluate_rating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @evaluate_rating(%struct.item* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.item*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.item* %0, %struct.item** %4, align 8
  store double %1, double* %5, align 8
  %9 = load double, double* @sqr_word_title_weight, align 8
  %10 = load %struct.item*, %struct.item** %4, align 8
  %11 = getelementptr inbounds %struct.item, %struct.item* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fmul double %9, %12
  %14 = load double, double* @word_title_weight_word_text_weight, align 8
  %15 = load %struct.item*, %struct.item** %4, align 8
  %16 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %14, %17
  %19 = fadd double %13, %18
  %20 = load double, double* @sqr_word_text_weight, align 8
  %21 = load %struct.item*, %struct.item** %4, align 8
  %22 = getelementptr inbounds %struct.item, %struct.item* %21, i32 0, i32 2
  %23 = load double, double* %22, align 8
  %24 = fmul double %20, %23
  %25 = fadd double %19, %24
  store double %25, double* %7, align 8
  %26 = load double, double* %7, align 8
  %27 = fcmp olt double %26, 1.000000e-09
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store double 1.000000e+00, double* %3, align 8
  br label %80

29:                                               ; preds = %2
  %30 = load double, double* %7, align 8
  %31 = call double @sqrt(double %30) #2
  %32 = load double, double* %5, align 8
  %33 = fdiv double %32, %31
  store double %33, double* %5, align 8
  %34 = load double, double* %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fmul double %34, %38
  %40 = fsub double 1.000000e+00, %39
  store double %40, double* %8, align 8
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %67, %29
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @query_rate_weights, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load double (%struct.item*, %struct.TYPE_3__*)*, double (%struct.item*, %struct.TYPE_3__*)** %50, align 8
  %52 = load %struct.item*, %struct.item** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = call double %51(%struct.item* %52, %struct.TYPE_3__* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = fmul double %57, %63
  %65 = load double, double* %8, align 8
  %66 = fsub double %65, %64
  store double %66, double* %8, align 8
  br label %67

67:                                               ; preds = %45
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load double, double* %8, align 8
  %72 = fcmp olt double %71, 0.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store double 0.000000e+00, double* %8, align 8
  br label %74

74:                                               ; preds = %73, %70
  %75 = load double, double* %8, align 8
  %76 = fcmp ogt double %75, 1.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store double 1.000000e+00, double* %8, align 8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load double, double* %8, align 8
  store double %79, double* %3, align 8
  br label %80

80:                                               ; preds = %78, %28
  %81 = load double, double* %3, align 8
  ret double %81
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
