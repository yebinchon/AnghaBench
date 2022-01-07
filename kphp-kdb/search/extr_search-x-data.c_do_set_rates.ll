; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_set_rates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_set_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_set_rates = type { i64, i32 }

@LEV_SEARCH_SET_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_rates(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_search_set_rates*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @fits(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

13:                                               ; preds = %3
  %14 = load i32, i32* @LEV_SEARCH_SET_RATES, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.lev_search_set_rates* @alloc_log_event(i32 %14, i32 20, i32 %15)
  store %struct.lev_search_set_rates* %16, %struct.lev_search_set_rates** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.lev_search_set_rates*, %struct.lev_search_set_rates** %8, align 8
  %19 = getelementptr inbounds %struct.lev_search_set_rates, %struct.lev_search_set_rates* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.lev_search_set_rates*, %struct.lev_search_set_rates** %8, align 8
  %22 = getelementptr inbounds %struct.lev_search_set_rates, %struct.lev_search_set_rates* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @set_rates(i64 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @fits(i64) #1

declare dso_local %struct.lev_search_set_rates* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_rates(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
