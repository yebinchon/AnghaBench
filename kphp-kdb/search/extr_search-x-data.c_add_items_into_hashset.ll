; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_add_items_into_hashset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_add_items_into_hashset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@R_cnt = common dso_local global i32 0, align 4
@hs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@R_tot_undef_hash = common dso_local global i64 0, align 8
@MAX_RES = common dso_local global i64 0, align 8
@R = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_items_into_hashset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %22, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @R_cnt, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hs, i32 0, i32 0), align 8
  %8 = load i64, i64* @R_tot_undef_hash, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @MAX_RES, align 8
  %11 = icmp sle i64 %9, %10
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i1 [ false, %2 ], [ %11, %6 ]
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = load i32*, i32** @R, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_hash_item_unsafe(i32 %19)
  %21 = call i32 @hashset_ll_insert(%struct.TYPE_3__* @hs, i32 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %2

25:                                               ; preds = %12
  ret void
}

declare dso_local i32 @hashset_ll_insert(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @get_hash_item_unsafe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
