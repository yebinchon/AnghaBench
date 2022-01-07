; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_rw_func_linear_reverse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_rw_func_linear_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_weight = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.rate_weight*)* @rw_func_linear_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @rw_func_linear_reverse(i32* %0, %struct.rate_weight* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rate_weight*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.rate_weight* %1, %struct.rate_weight** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.rate_weight*, %struct.rate_weight** %4, align 8
  %8 = getelementptr inbounds %struct.rate_weight, %struct.rate_weight* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_rate_item_fast(i32* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, i32* %5, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double %16, 0x3E00000000200000
  ret double %17
}

declare dso_local i32 @get_rate_item_fast(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
