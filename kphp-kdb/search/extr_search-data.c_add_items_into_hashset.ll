; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_items_into_hashset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_items_into_hashset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@R_cnt = common dso_local global i32 0, align 4
@hs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@R_tot_undef_hash = common dso_local global i64 0, align 8
@MAX_RES = common dso_local global i64 0, align 8
@Q_hash_rating = common dso_local global i64 0, align 8
@R = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_items_into_hashset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_items_into_hashset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %35, %0
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
  br i1 %13, label %14, label %38

14:                                               ; preds = %12
  %15 = load i64, i64* @Q_hash_rating, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32*, i32** @R, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_hash_item_unsafe(i32 %22)
  br label %32

24:                                               ; preds = %14
  %25 = load i32*, i32** @R, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @Q_hash_rating, align 8
  %31 = call i32 @get_rate_item_fast(i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = phi i32 [ %23, %17 ], [ %31, %24 ]
  %34 = call i32 @hashset_ll_insert(%struct.TYPE_3__* @hs, i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %2

38:                                               ; preds = %12
  ret void
}

declare dso_local i32 @hashset_ll_insert(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @get_hash_item_unsafe(i32) #1

declare dso_local i32 @get_rate_item_fast(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
