; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_rate_weight_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_rate_weight_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@query_rate_weights = common dso_local global i64 0, align 8
@MAX_RATE_WEIGHTS = common dso_local global i64 0, align 8
@QRP = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@QRW = common dso_local global %struct.TYPE_4__* null, align 8
@FLAG_ENTRY_SORT_SEARCH = common dso_local global i32 0, align 4
@Q_order = common dso_local global i32 0, align 4
@FLAG_REVERSE_SEARCH = common dso_local global i32 0, align 4
@rw_func_log_reverse = common dso_local global i32* null, align 8
@rw_func_log = common dso_local global i32* null, align 8
@rw_func_linear_reverse = common dso_local global i32* null, align 8
@rw_func_linear = common dso_local global i32* null, align 8
@QRT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@M_LN2 = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@QRT_min_creation_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rate_weight_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_weight_add(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %109

13:                                               ; preds = %3
  %14 = load i64, i64* @query_rate_weights, align 8
  %15 = load i64, i64* @MAX_RATE_WEIGHTS, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -3, i32* %4, align 4
  br label %109

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 80
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 108
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @QRP, i32 0, i32 1), align 8
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @QRP, i32 0, i32 0), align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @QRW, align 8
  %27 = load i64, i64* @query_rate_weights, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @FLAG_ENTRY_SORT_SEARCH, align 4
  %31 = load i32, i32* @Q_order, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @Q_order, align 4
  store i32 0, i32* %4, align 4
  br label %109

33:                                               ; preds = %21
  store i32 -4, i32* %4, align 4
  br label %109

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @get_sorting_mode(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %109

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 15
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @QRW, align 8
  %47 = load i64, i64* @query_rate_weights, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @QRW, align 8
  %52 = load i64, i64* @query_rate_weights, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 76
  br i1 %56, label %57, label %70

57:                                               ; preds = %40
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** @rw_func_log_reverse, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i32*, i32** @rw_func_log, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32* [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @QRW, align 8
  %67 = load i64, i64* @query_rate_weights, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32* %65, i32** %69, align 8
  br label %106

70:                                               ; preds = %40
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 108
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32*, i32** @rw_func_linear_reverse, align 8
  br label %80

78:                                               ; preds = %73
  %79 = load i32*, i32** @rw_func_linear, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32* [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @QRW, align 8
  %83 = load i64, i64* @query_rate_weights, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32* %81, i32** %85, align 8
  br label %105

86:                                               ; preds = %70
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 84
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @QRW, align 8
  %91 = load i64, i64* @query_rate_weights, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @QRT, i32 0, i32 0), align 4
  %95 = load i32, i32* @M_LN2, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sdiv i32 %95, %96
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @QRT, i32 0, i32 1), align 4
  %99 = load i64, i64* @now, align 8
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %100, 40
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %99, %102
  store i64 %103, i64* @QRT_min_creation_time, align 8
  store i32 0, i32* %4, align 4
  br label %109

104:                                              ; preds = %86
  store i32 -2, i32* %4, align 4
  br label %109

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %64
  %107 = load i64, i64* @query_rate_weights, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* @query_rate_weights, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %104, %89, %39, %33, %24, %17, %12
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @get_sorting_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
