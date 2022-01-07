; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_push_user_ad_std.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_push_user_ad_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intree_node = type { i32, i32 }
%struct.advert = type { i32, i64, i64, i64 }

@__exclude_ad_id = common dso_local global i32 0, align 4
@__xor_mask = common dso_local global i32 0, align 4
@__and_mask = common dso_local global i32 0, align 4
@__use_views_limit = common dso_local global i64 0, align 8
@ADF_LIMIT_VIEWS = common dso_local global i32 0, align 4
@__user_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_push_user_ad_std(%struct.intree_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca double, align 8
  store %struct.intree_node* %0, %struct.intree_node** %3, align 8
  %8 = load %struct.intree_node*, %struct.intree_node** %3, align 8
  %9 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @__exclude_ad_id, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.intree_node*, %struct.intree_node** %3, align 8
  %17 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.advert* @get_ad(i32 %19)
  store %struct.advert* %20, %struct.advert** %6, align 8
  %21 = load %struct.advert*, %struct.advert** %6, align 8
  %22 = getelementptr inbounds %struct.advert, %struct.advert* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @__xor_mask, align 4
  %25 = xor i32 %23, %24
  %26 = load i32, i32* @__and_mask, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %67

30:                                               ; preds = %15
  %31 = load i64, i64* @__use_views_limit, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.advert*, %struct.advert** %6, align 8
  %35 = getelementptr inbounds %struct.advert, %struct.advert* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.advert*, %struct.advert** %6, align 8
  %38 = getelementptr inbounds %struct.advert, %struct.advert* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %67

42:                                               ; preds = %33, %30
  %43 = load %struct.advert*, %struct.advert** %6, align 8
  %44 = getelementptr inbounds %struct.advert, %struct.advert* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ADF_LIMIT_VIEWS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.advert*, %struct.advert** %6, align 8
  %51 = getelementptr inbounds %struct.advert, %struct.advert* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 100
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %67

58:                                               ; preds = %54, %49, %42
  %59 = load %struct.advert*, %struct.advert** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @__user_id, align 4
  %62 = call double @calculate_expected_view_gain(%struct.advert* %59, i32 %60, i32 %61)
  store double %62, double* %7, align 8
  %63 = load double, double* %7, align 8
  %64 = load %struct.advert*, %struct.advert** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @heap_insert(double %63, %struct.advert* %64, i32 %65)
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %58, %57, %41, %29, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local double @calculate_expected_view_gain(%struct.advert*, i32, i32) #1

declare dso_local i32 @heap_insert(double, %struct.advert*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
