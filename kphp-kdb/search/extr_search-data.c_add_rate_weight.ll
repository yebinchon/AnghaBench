; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_rate_weight.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_rate_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i64 }
%struct.TYPE_3__ = type { i32, double, i64 }

@query_rate_weights = common dso_local global i64 0, align 8
@MAX_RATE_WEIGHTS = common dso_local global i64 0, align 8
@QRP = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@QRW = common dso_local global %struct.TYPE_3__* null, align 8
@FLAG_ENTRY_SORT_SEARCH = common dso_local global i32 0, align 4
@Q_order = common dso_local global i32 0, align 4
@rw_func_log_reverse = common dso_local global i64 0, align 8
@rw_func_log = common dso_local global i64 0, align 8
@rw_func_linear_reverse = common dso_local global i64 0, align 8
@rw_func_linear = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_rate_weight(i32 %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load double, double* %5, align 8
  %9 = fcmp ole double %8, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %73

11:                                               ; preds = %3
  %12 = load i64, i64* @query_rate_weights, align 8
  %13 = load i64, i64* @MAX_RATE_WEIGHTS, align 8
  %14 = icmp ult i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @QRP, i32 0, i32 1), align 8
  %20 = load double, double* %5, align 8
  store double %20, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @QRP, i32 0, i32 0), align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %22 = load i64, i64* @query_rate_weights, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @FLAG_ENTRY_SORT_SEARCH, align 4
  %26 = load i32, i32* @Q_order, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @Q_order, align 4
  br label %73

28:                                               ; preds = %11
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %33 = load i64, i64* @query_rate_weights, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load double, double* %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %38 = load i64, i64* @query_rate_weights, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store double %36, double* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @rw_func_log_reverse, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @rw_func_log, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %54 = load i64, i64* @query_rate_weights, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i64 %52, i64* %56, align 8
  br label %70

57:                                               ; preds = %28
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @rw_func_linear_reverse, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @rw_func_linear, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @QRW, align 8
  %67 = load i64, i64* @query_rate_weights, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 %65, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %51
  %71 = load i64, i64* @query_rate_weights, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* @query_rate_weights, align 8
  br label %73

73:                                               ; preds = %70, %19, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
