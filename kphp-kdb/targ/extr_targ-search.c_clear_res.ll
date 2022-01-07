; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_clear_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_clear_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_tot = common dso_local global i64 0, align 8
@R_cnt = common dso_local global i64 0, align 8
@R_position = common dso_local global i32 0, align 4
@store_res_std = common dso_local global i32 0, align 4
@store_res = common dso_local global i32 0, align 4
@postprocess_res_std = common dso_local global i32 0, align 4
@postprocess_res = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_res() #0 {
  store i64 0, i64* @R_tot, align 8
  store i64 0, i64* @R_cnt, align 8
  %1 = load i32, i32* @R_position, align 4
  %2 = icmp ne i32 %1, -2147483648
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @store_res_std, align 4
  store i32 %4, i32* @store_res, align 4
  %5 = load i32, i32* @postprocess_res_std, align 4
  store i32 %5, i32* @postprocess_res, align 4
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
