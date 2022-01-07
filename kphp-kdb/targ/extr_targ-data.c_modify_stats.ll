; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_modify_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_modify_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_stat_load = type { i64, i32, i64, i64, i64 }
%struct.advert = type { i64, i64, i32, i64, i64, i32, i64, i64, i64, i32, i32, i32 }

@tot_clicks = common dso_local global i64 0, align 8
@tot_views = common dso_local global i64 0, align 8
@tot_click_money = common dso_local global i32 0, align 4
@MONEY_SCALE = common dso_local global i32 0, align 4
@total_sump0 = common dso_local global i32 0, align 4
@total_sump1 = common dso_local global i32 0, align 4
@total_sump2 = common dso_local global i32 0, align 4
@ADF_ANYVIEWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_stat_load*, %struct.advert*)* @modify_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_stats(%struct.lev_targ_stat_load* %0, %struct.advert* %1) #0 {
  %3 = alloca %struct.lev_targ_stat_load*, align 8
  %4 = alloca %struct.advert*, align 8
  store %struct.lev_targ_stat_load* %0, %struct.lev_targ_stat_load** %3, align 8
  store %struct.advert* %1, %struct.advert** %4, align 8
  %5 = load %struct.advert*, %struct.advert** %4, align 8
  %6 = getelementptr inbounds %struct.advert, %struct.advert* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @tot_clicks, align 8
  %9 = sub nsw i64 %8, %7
  store i64 %9, i64* @tot_clicks, align 8
  %10 = load %struct.advert*, %struct.advert** %4, align 8
  %11 = getelementptr inbounds %struct.advert, %struct.advert* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @tot_views, align 8
  %14 = sub nsw i64 %13, %12
  store i64 %14, i64* @tot_views, align 8
  %15 = load %struct.advert*, %struct.advert** %4, align 8
  %16 = getelementptr inbounds %struct.advert, %struct.advert* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @tot_click_money, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* @tot_click_money, align 4
  %20 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %21 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %26 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i64 [ %27, %24 ], [ 0, %28 ]
  %31 = load %struct.advert*, %struct.advert** %4, align 8
  %32 = getelementptr inbounds %struct.advert, %struct.advert* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %34 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %39 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MONEY_SCALE, align 4
  %42 = mul nsw i32 %40, %41
  br label %44

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %42, %37 ], [ 0, %43 ]
  %46 = load %struct.advert*, %struct.advert** %4, align 8
  %47 = getelementptr inbounds %struct.advert, %struct.advert* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %49 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %54 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  br label %57

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i64 [ %55, %52 ], [ 0, %56 ]
  %59 = load %struct.advert*, %struct.advert** %4, align 8
  %60 = getelementptr inbounds %struct.advert, %struct.advert* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %62 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %67 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i64 [ %68, %65 ], [ 0, %69 ]
  %72 = load %struct.advert*, %struct.advert** %4, align 8
  %73 = getelementptr inbounds %struct.advert, %struct.advert* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %75 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.lev_targ_stat_load*, %struct.lev_targ_stat_load** %3, align 8
  %80 = getelementptr inbounds %struct.lev_targ_stat_load, %struct.lev_targ_stat_load* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  br label %83

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i64 [ %81, %78 ], [ 0, %82 ]
  %85 = load %struct.advert*, %struct.advert** %4, align 8
  %86 = getelementptr inbounds %struct.advert, %struct.advert* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.advert*, %struct.advert** %4, align 8
  %88 = getelementptr inbounds %struct.advert, %struct.advert* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @tot_clicks, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* @tot_clicks, align 8
  %92 = load %struct.advert*, %struct.advert** %4, align 8
  %93 = getelementptr inbounds %struct.advert, %struct.advert* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @tot_views, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* @tot_views, align 8
  %97 = load %struct.advert*, %struct.advert** %4, align 8
  %98 = getelementptr inbounds %struct.advert, %struct.advert* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @tot_click_money, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* @tot_click_money, align 4
  %102 = load %struct.advert*, %struct.advert** %4, align 8
  %103 = getelementptr inbounds %struct.advert, %struct.advert* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @total_sump0, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* @total_sump0, align 4
  %109 = load %struct.advert*, %struct.advert** %4, align 8
  %110 = getelementptr inbounds %struct.advert, %struct.advert* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @total_sump1, align 4
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* @total_sump1, align 4
  %116 = load %struct.advert*, %struct.advert** %4, align 8
  %117 = getelementptr inbounds %struct.advert, %struct.advert* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @total_sump2, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* @total_sump2, align 4
  %123 = load %struct.advert*, %struct.advert** %4, align 8
  %124 = getelementptr inbounds %struct.advert, %struct.advert* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.advert*, %struct.advert** %4, align 8
  %127 = getelementptr inbounds %struct.advert, %struct.advert* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 8
  %132 = load %struct.advert*, %struct.advert** %4, align 8
  %133 = getelementptr inbounds %struct.advert, %struct.advert* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.advert*, %struct.advert** %4, align 8
  %136 = getelementptr inbounds %struct.advert, %struct.advert* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  %141 = load %struct.advert*, %struct.advert** %4, align 8
  %142 = getelementptr inbounds %struct.advert, %struct.advert* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.advert*, %struct.advert** %4, align 8
  %145 = getelementptr inbounds %struct.advert, %struct.advert* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 8
  %150 = load %struct.advert*, %struct.advert** %4, align 8
  %151 = getelementptr inbounds %struct.advert, %struct.advert* %150, i32 0, i32 8
  store i64 0, i64* %151, align 8
  %152 = load %struct.advert*, %struct.advert** %4, align 8
  %153 = getelementptr inbounds %struct.advert, %struct.advert* %152, i32 0, i32 7
  store i64 0, i64* %153, align 8
  %154 = load %struct.advert*, %struct.advert** %4, align 8
  %155 = getelementptr inbounds %struct.advert, %struct.advert* %154, i32 0, i32 6
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @ADF_ANYVIEWS, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.advert*, %struct.advert** %4, align 8
  %159 = getelementptr inbounds %struct.advert, %struct.advert* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.advert*, %struct.advert** %4, align 8
  %163 = call i32 @compute_estimated_gain(%struct.advert* %162)
  ret i32 0
}

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
