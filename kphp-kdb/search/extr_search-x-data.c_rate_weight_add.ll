; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_rate_weight_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_rate_weight_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@query_rate_weights = common dso_local global i32 0, align 4
@FLAG_REVERSE_SEARCH = common dso_local global i32 0, align 4
@QRW = common dso_local global %struct.TYPE_2__* null, align 8
@rw_func_log_reverse = common dso_local global i32 0, align 4
@rw_func_log = common dso_local global i32 0, align 4
@rw_func_linear_reverse = common dso_local global i32 0, align 4
@rw_func_linear = common dso_local global i32 0, align 4
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
  %10 = load i32, i32* @query_rate_weights, align 4
  %11 = icmp sge i32 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -3, i32* %4, align 4
  br label %74

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @get_sorting_mode(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %74

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @QRW, align 8
  %26 = load i32, i32* @query_rate_weights, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @QRW, align 8
  %32 = load i32, i32* @query_rate_weights, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 76
  br i1 %37, label %38, label %52

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @rw_func_log_reverse, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @rw_func_log, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @QRW, align 8
  %48 = load i32, i32* @query_rate_weights, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 4
  br label %71

52:                                               ; preds = %19
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 108
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @rw_func_linear_reverse, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @rw_func_linear, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @QRW, align 8
  %65 = load i32, i32* @query_rate_weights, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %63, i32* %68, align 4
  br label %70

69:                                               ; preds = %52
  store i32 -2, i32* %4, align 4
  br label %74

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %45
  %72 = load i32, i32* @query_rate_weights, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @query_rate_weights, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %69, %18, %12
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @get_sorting_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
