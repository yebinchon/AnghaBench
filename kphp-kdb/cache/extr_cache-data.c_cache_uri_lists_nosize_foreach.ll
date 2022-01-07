; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_lists_nosize_foreach.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_lists_nosize_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }

@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@cgsl_order_top = common dso_local global i32 0, align 4
@CACHE_URI_BUCKETS = common dso_local global i32 0, align 4
@cgsl_order_bottom = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (%struct.cache_uri*)*, i32, %struct.cache_uri*)* @cache_uri_lists_nosize_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_uri_lists_nosize_foreach(void (%struct.cache_uri*)* %0, i32 %1, %struct.cache_uri* %2) #0 {
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
  br i1 %16, label %17, label %51

17:                                               ; preds = %3
  %18 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %47, %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %50

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

30:                                               ; preds = %43, %23
  %31 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %32 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %33 = icmp ne %struct.cache_uri* %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %36 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %4, align 8
  %41 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  call void %40(%struct.cache_uri* %41)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %45 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %44)
  store %struct.cache_uri* %45, %struct.cache_uri** %8, align 8
  br label %30

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  br label %20

50:                                               ; preds = %20
  br label %89

51:                                               ; preds = %3
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @cgsl_order_bottom, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %85, %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %62, i64 %64
  store %struct.cache_uri* %65, %struct.cache_uri** %9, align 8
  %66 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %67 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %66)
  store %struct.cache_uri* %67, %struct.cache_uri** %8, align 8
  br label %68

68:                                               ; preds = %81, %61
  %69 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %70 = load %struct.cache_uri*, %struct.cache_uri** %9, align 8
  %71 = icmp ne %struct.cache_uri* %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %74 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %4, align 8
  %79 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  call void %78(%struct.cache_uri* %79)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %83 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %82)
  store %struct.cache_uri* %83, %struct.cache_uri** %8, align 8
  br label %68

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %50
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
