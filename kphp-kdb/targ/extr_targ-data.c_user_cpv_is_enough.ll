; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_cpv_is_enough.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_cpv_is_enough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { i32 }
%struct.TYPE_2__ = type { double }

@MAX_USERS = common dso_local global i32 0, align 4
@GSORT_HEAP_SIZE = common dso_local global i32 0, align 4
@User = common dso_local global %struct.user** null, align 8
@heap_push_user_ad_ext = common dso_local global i32 0, align 4
@heap_push_user_ad = common dso_local global i32 0, align 4
@__use_factor = common dso_local global i32 0, align 4
@__use_views_limit = common dso_local global i64 0, align 8
@__exclude_ad_id = common dso_local global i64 0, align 8
@ADF_SITES_MASK_SHIFT = common dso_local global i32 0, align 4
@__and_mask = common dso_local global i32 0, align 4
@__xor_mask = common dso_local global i32 0, align 4
@HN = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_2__* null, align 8
@CTR_GAIN_PRICE_MULTIPLIER = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_cpv_is_enough(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.user*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_USERS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GSORT_HEAP_SIZE, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19, %15, %5
  store i32 0, i32* %6, align 4
  br label %73

27:                                               ; preds = %22
  %28 = load %struct.user**, %struct.user*** @User, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.user*, %struct.user** %28, i64 %30
  %32 = load %struct.user*, %struct.user** %31, align 8
  store %struct.user* %32, %struct.user** %12, align 8
  %33 = load %struct.user*, %struct.user** %12, align 8
  %34 = icmp ne %struct.user* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %73

36:                                               ; preds = %27
  %37 = load %struct.user*, %struct.user** %12, align 8
  %38 = getelementptr inbounds %struct.user, %struct.user* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %73

42:                                               ; preds = %36
  %43 = load i32, i32* @heap_push_user_ad_ext, align 4
  store i32 %43, i32* @heap_push_user_ad, align 4
  store i32 1, i32* @__use_factor, align 4
  store i64 0, i64* @__use_views_limit, align 8
  store i64 0, i64* @__exclude_ad_id, align 8
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 255
  %46 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* @__and_mask, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* @__xor_mask, align 4
  %52 = load %struct.user*, %struct.user** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @build_user_ad_heap(%struct.user* %52, i32 %53)
  store i32 0, i32* @__use_factor, align 4
  store i64 0, i64* @__use_views_limit, align 8
  %55 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %56 = shl i32 254, %55
  store i32 %56, i32* @__and_mask, align 4
  store i32 0, i32* @__xor_mask, align 4
  %57 = load i32, i32* @HN, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %73

61:                                               ; preds = %42
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @H, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = load double, double* @CTR_GAIN_PRICE_MULTIPLIER, align 8
  %68 = fmul double %66, %67
  %69 = fadd double %68, 5.000000e-01
  %70 = fptosi double %69 to i32
  %71 = icmp sgt i32 %62, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %61, %60, %41, %35, %26
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @build_user_ad_heap(%struct.user*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
