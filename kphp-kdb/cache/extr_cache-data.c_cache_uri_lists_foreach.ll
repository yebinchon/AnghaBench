; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_lists_foreach.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_lists_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }

@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@cgsl_order_top = common dso_local global i32 0, align 4
@CACHE_URI_BUCKETS = common dso_local global i32 0, align 4
@cgsl_order_bottom = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (%struct.cache_uri*)*, i32, %struct.cache_uri*)* @cache_uri_lists_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_uri_lists_foreach(void (%struct.cache_uri*)* %0, i32 %1, %struct.cache_uri* %2) #0 {
  %4 = alloca void (%struct.cache_uri*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_uri*, align 8
  %9 = alloca %struct.cache_uri*, align 8
  store void (%struct.cache_uri*)* %0, void (%struct.cache_uri*)** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cache_uri* %2, %struct.cache_uri** %6, align 8
  %10 = load i32, i32* @cache_features_mask, align 4
  %11 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @cgsl_order_top, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %41, %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %24, i64 %26
  store %struct.cache_uri* %27, %struct.cache_uri** %9, align 8
  %28 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %29 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %28)
  store %struct.cache_uri* %29, %struct.cache_uri** %8, align 8
  br label %30

30:                                               ; preds = %37, %23
  %31 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %32 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %33 = icmp ne %struct.cache_uri* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %4, align 8
  %36 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  call void %35(%struct.cache_uri* %36)
  br label %37

37:                                               ; preds = %34
  %38 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %39 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %38)
  store %struct.cache_uri* %39, %struct.cache_uri** %8, align 8
  br label %30

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %20

44:                                               ; preds = %20
  br label %77

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @cgsl_order_bottom, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %73, %45
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %56, i64 %58
  store %struct.cache_uri* %59, %struct.cache_uri** %9, align 8
  %60 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %61 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %60)
  store %struct.cache_uri* %61, %struct.cache_uri** %8, align 8
  br label %62

62:                                               ; preds = %69, %55
  %63 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %64 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %65 = icmp ne %struct.cache_uri* %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %4, align 8
  %68 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  call void %67(%struct.cache_uri* %68)
  br label %69

69:                                               ; preds = %66
  %70 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %71 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %70)
  store %struct.cache_uri* %71, %struct.cache_uri** %8, align 8
  br label %62

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %51

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.cache_uri* @PNEXT(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
