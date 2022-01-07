; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_set_rate2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_do_set_rate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_set_rate = type { i64 }

@LEV_SEARCH_SET_RATE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_rate2(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_search_set_rate*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @fits(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load i32, i32* @LEV_SEARCH_SET_RATE2, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.lev_search_set_rate* @alloc_log_event(i32 %12, i32 16, i32 %13)
  store %struct.lev_search_set_rate* %14, %struct.lev_search_set_rate** %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.lev_search_set_rate*, %struct.lev_search_set_rate** %6, align 8
  %17 = getelementptr inbounds %struct.lev_search_set_rate, %struct.lev_search_set_rate* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @set_rate2(i64 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @fits(i64) #1

declare dso_local %struct.lev_search_set_rate* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_rate2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
