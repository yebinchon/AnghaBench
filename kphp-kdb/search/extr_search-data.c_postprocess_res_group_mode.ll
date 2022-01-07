; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_postprocess_res_group_mode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_postprocess_res_group_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@Q_limit = common dso_local global i64 0, align 8
@hs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@R_cnt = common dso_local global i64 0, align 8
@R_tot_undef_hash = common dso_local global i32 0, align 4
@R_tot_groups = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i32 0, align 4
@hm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @postprocess_res_group_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postprocess_res_group_mode() #0 {
  %1 = load i64, i64* @Q_limit, align 8
  %2 = icmp sle i64 %1, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hs, i32 0, i32 0), align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load i64, i64* @R_cnt, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i64, i64* @R_cnt, align 8
  %11 = call i32 @hashset_init(i64 %10)
  %12 = call i32 (...) @add_items_into_hashset()
  br label %13

13:                                               ; preds = %9, %6, %3
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hs, i32 0, i32 1), align 8
  %15 = load i32, i32* @R_tot_undef_hash, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* @R_tot_groups, align 4
  %17 = load i32, i32* @R_tot_groups, align 4
  %18 = load i32, i32* @MAX_RES, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* @R_tot_groups, align 4
  br label %21

21:                                               ; preds = %20, %13
  br label %29

22:                                               ; preds = %0
  %23 = load i64, i64* @R_cnt, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = call i32 @hashmap_ll_int_free(i32* @hm)
  %28 = call i32 (...) @heap_sort_res()
  br label %29

29:                                               ; preds = %26, %25, %21
  ret void
}

declare dso_local i32 @hashset_init(i64) #1

declare dso_local i32 @add_items_into_hashset(...) #1

declare dso_local i32 @hashmap_ll_int_free(i32*) #1

declare dso_local i32 @heap_sort_res(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
