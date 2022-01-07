; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_global_click_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_global_click_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.views_clicks_ll = type { i64, i64 }
%struct.lev_targ_global_click_stats = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"do_set_global_click_stats(%d)\0A\00", align 1
@MAX_AD_VIEWS = common dso_local global i32 0, align 4
@LEV_TARG_GLOBAL_CLICK_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_global_click_stats(i32 %0, %struct.views_clicks_ll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.views_clicks_ll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lev_targ_global_click_stats*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.views_clicks_ll* %1, %struct.views_clicks_ll** %5, align 8
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_AD_VIEWS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

17:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %86, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_AD_VIEWS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %18
  %23 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %23, i64 %25
  %27 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %22
  %31 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %31, i64 %33
  %35 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %30
  %39 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %39, i64 %41
  %43 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %45, i64 %47
  %49 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %44, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %38
  %53 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %53, i64 %55
  %57 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 1000000000000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %38, %30, %22
  store i32 0, i32* %3, align 4
  br label %120

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %65, i64 %67
  %69 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %73, i64 %75
  %77 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp sgt i64 %81, 1000000000000000
  br i1 %82, label %83, label %84

83:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %120

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %61
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %18

89:                                               ; preds = %18
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %92 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %91, i64 0
  %93 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %99 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %98, i64 0
  %100 = getelementptr inbounds %struct.views_clicks_ll, %struct.views_clicks_ll* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %89
  store i32 0, i32* %3, align 4
  br label %120

104:                                              ; preds = %96
  %105 = load i32, i32* @LEV_TARG_GLOBAL_CLICK_STATS, align 4
  %106 = load i32, i32* %4, align 4
  %107 = mul nsw i32 %106, 16
  %108 = add nsw i32 %107, 8
  %109 = load i32, i32* %4, align 4
  %110 = call %struct.lev_targ_global_click_stats* @alloc_log_event(i32 %105, i32 %108, i32 %109)
  store %struct.lev_targ_global_click_stats* %110, %struct.lev_targ_global_click_stats** %9, align 8
  %111 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %9, align 8
  %112 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.views_clicks_ll*, %struct.views_clicks_ll** %5, align 8
  %115 = load i32, i32* %4, align 4
  %116 = mul nsw i32 %115, 16
  %117 = call i32 @memcpy(i32 %113, %struct.views_clicks_ll* %114, i32 %116)
  %118 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %9, align 8
  %119 = call i32 @set_global_click_stats(%struct.lev_targ_global_click_stats* %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %104, %103, %83, %60, %16
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local %struct.lev_targ_global_click_stats* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.views_clicks_ll*, i32) #1

declare dso_local i32 @set_global_click_stats(%struct.lev_targ_global_click_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
