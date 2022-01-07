; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_pricing.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_pricing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_position = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8
@heap_push_user_ad_ext = common dso_local global i32 0, align 4
@heap_push_user_ad_std = common dso_local global i32 0, align 4
@heap_push_user_ad = common dso_local global i32 0, align 4
@__use_factor = common dso_local global i32 0, align 4
@__use_views_limit = common dso_local global i64 0, align 8
@__exclude_ad_id = common dso_local global i64 0, align 8
@ADF_SITES_MASK_SHIFT = common dso_local global i32 0, align 4
@__and_mask = common dso_local global i32 0, align 4
@__xor_mask = common dso_local global i32 0, align 4
@__cat_mask = common dso_local global i64 0, align 8
@R_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_pricing(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 100
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 -1, i32* %5, align 4
  br label %77

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* @R_position, align 4
  %19 = load i32, i32* @Q_limit, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1000, i32* @Q_limit, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* @Q_limit, align 4
  %24 = icmp sgt i32 %23, 10000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 10000, i32* @Q_limit, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32*, i32** @R, align 8
  %28 = load i32, i32* @Q_limit, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %27, i32 0, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @heap_push_user_ad_ext, align 4
  br label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @heap_push_user_ad_std, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* @heap_push_user_ad, align 4
  store i32 1, i32* @__use_factor, align 4
  store i64 0, i64* @__use_views_limit, align 8
  store i64 0, i64* @__exclude_ad_id, align 8
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 255
  %44 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* @__and_mask, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 255
  %48 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %49 = shl i32 %47, %48
  store i32 %49, i32* @__xor_mask, align 4
  store i64 -1, i64* @__cat_mask, align 8
  %50 = call i32 @perform_query(i32 0)
  store i32 %50, i32* %10, align 4
  store i32 0, i32* @__use_factor, align 4
  store i64 0, i64* @__use_views_limit, align 8
  %51 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %52 = shl i32 254, %51
  store i32 %52, i32* @__and_mask, align 4
  store i32 0, i32* @__xor_mask, align 4
  store i32 0, i32* @R_position, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %40
  %56 = load i32, i32* @Q_limit, align 4
  store i32 %56, i32* @R_cnt, align 4
  br label %57

57:                                               ; preds = %71, %55
  %58 = load i32, i32* @R_cnt, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32*, i32** @R, align 8
  %62 = load i32, i32* @R_cnt, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %60, %57
  %70 = phi i1 [ false, %57 ], [ %68, %60 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i32, i32* @R_cnt, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* @R_cnt, align 4
  br label %57

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %16
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @perform_query(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
