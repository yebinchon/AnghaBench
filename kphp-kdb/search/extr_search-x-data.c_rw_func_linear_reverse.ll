; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_rw_func_linear_reverse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_rw_func_linear_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }
%struct.rate_weight = type { i32 }

@INT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.item*, %struct.rate_weight*)* @rw_func_linear_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @rw_func_linear_reverse(%struct.item* %0, %struct.rate_weight* %1) #0 {
  %3 = alloca %struct.item*, align 8
  %4 = alloca %struct.rate_weight*, align 8
  %5 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %3, align 8
  store %struct.rate_weight* %1, %struct.rate_weight** %4, align 8
  %6 = load %struct.item*, %struct.item** %3, align 8
  %7 = load %struct.rate_weight*, %struct.rate_weight** %4, align 8
  %8 = getelementptr inbounds %struct.rate_weight, %struct.rate_weight* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_rate_item_fast(%struct.item* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* @INT_MIN, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = uitofp i32 %16 to double
  %18 = fmul double %17, 0x3DF0000000100000
  ret double %18
}

declare dso_local i32 @get_rate_item_fast(%struct.item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
