; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_incr_rate2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_incr_rate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_incr_rate_short = type { i64 }
%struct.lev_search_incr_rate = type { i64 }

@LEV_SEARCH_INCR_RATE2_SHORT = common dso_local global i64 0, align 8
@LEV_SEARCH_INCR_RATE2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_incr_rate2(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_search_incr_rate_short*, align 8
  %7 = alloca %struct.lev_search_incr_rate*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @fits(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = trunc i32 %14 to i8
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i64, i64* @LEV_SEARCH_INCR_RATE2_SHORT, align 8
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i8* @alloc_log_event(i64 %23, i32 12, i32 0)
  %25 = bitcast i8* %24 to %struct.lev_search_incr_rate_short*
  store %struct.lev_search_incr_rate_short* %25, %struct.lev_search_incr_rate_short** %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.lev_search_incr_rate_short*, %struct.lev_search_incr_rate_short** %6, align 8
  %28 = getelementptr inbounds %struct.lev_search_incr_rate_short, %struct.lev_search_incr_rate_short* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %37

29:                                               ; preds = %12
  %30 = load i64, i64* @LEV_SEARCH_INCR_RATE2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @alloc_log_event(i64 %30, i32 16, i32 %31)
  %33 = bitcast i8* %32 to %struct.lev_search_incr_rate*
  store %struct.lev_search_incr_rate* %33, %struct.lev_search_incr_rate** %7, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.lev_search_incr_rate*, %struct.lev_search_incr_rate** %7, align 8
  %36 = getelementptr inbounds %struct.lev_search_incr_rate, %struct.lev_search_incr_rate* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %18
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @incr_rate2(i64 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @fits(i64) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @incr_rate2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
