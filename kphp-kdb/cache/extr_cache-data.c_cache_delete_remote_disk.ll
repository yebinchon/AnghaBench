; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_delete_remote_disk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_delete_remote_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32*, %struct.cache_uri* }
%struct.lev_cache_change_disk_status = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"cache_delete_remote_disk: starting\0A\00", align 1
@disk_filter = common dso_local global i32 0, align 4
@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@CACHE_URI_BUCKETS = common dso_local global i32 0, align 4
@CACHE_FEATURE_FAST_BOTTOM_ACCESS = common dso_local global i32 0, align 4
@list_cached = common dso_local global %struct.cache_uri* null, align 8
@uri_hash_prime = common dso_local global i32 0, align 4
@H = common dso_local global %struct.cache_uri** null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"cache_delete_remote_disk: r = %lld\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_cache_change_disk_status*)* @cache_delete_remote_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_delete_remote_disk(%struct.lev_cache_change_disk_status* %0) #0 {
  %2 = alloca %struct.lev_cache_change_disk_status*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_uri*, align 8
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca %struct.cache_uri*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lev_cache_change_disk_status* %0, %struct.lev_cache_change_disk_status** %2, align 8
  %11 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.lev_cache_change_disk_status*, %struct.lev_cache_change_disk_status** %2, align 8
  %13 = call i32 @cache_change_disk_status(%struct.lev_cache_change_disk_status* %12, i32 1)
  %14 = load %struct.lev_cache_change_disk_status*, %struct.lev_cache_change_disk_status** %2, align 8
  %15 = getelementptr inbounds %struct.lev_cache_change_disk_status, %struct.lev_cache_change_disk_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cache_disk_filter_init(i32* @disk_filter, i32 %16)
  store i64 0, i64* %3, align 8
  %18 = load %struct.lev_cache_change_disk_status*, %struct.lev_cache_change_disk_status** %2, align 8
  %19 = getelementptr inbounds %struct.lev_cache_change_disk_status, %struct.lev_cache_change_disk_status* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_bucket_by_packed_location(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @cache_features_mask, align 4
  %23 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %1
  %27 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %73, %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %29
  %33 = load i32, i32* @cache_features_mask, align 4
  %34 = load i32, i32* @CACHE_FEATURE_FAST_BOTTOM_ACCESS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %73

45:                                               ; preds = %40, %37
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.cache_uri*, %struct.cache_uri** @list_cached, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %47, i64 %49
  store %struct.cache_uri* %50, %struct.cache_uri** %6, align 8
  %51 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %52 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %51)
  store %struct.cache_uri* %52, %struct.cache_uri** %5, align 8
  br label %53

53:                                               ; preds = %70, %46
  %54 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %55 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %56 = icmp ne %struct.cache_uri* %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %59 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %58)
  store %struct.cache_uri* %59, %struct.cache_uri** %7, align 8
  %60 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %61 = call i32 @cache_uri_delete_remote_disk(%struct.cache_uri* %60, i32* @disk_filter)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %3, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %64, %57
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  store %struct.cache_uri* %71, %struct.cache_uri** %5, align 8
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %4, align 4
  br label %29

76:                                               ; preds = %29
  br label %117

77:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %113, %77
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @uri_hash_prime, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %78
  %83 = load %struct.cache_uri**, %struct.cache_uri*** @H, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %83, i64 %85
  %87 = load %struct.cache_uri*, %struct.cache_uri** %86, align 8
  store %struct.cache_uri* %87, %struct.cache_uri** %5, align 8
  br label %88

88:                                               ; preds = %108, %82
  %89 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %90 = icmp ne %struct.cache_uri* %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %93 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %98 = call i32 @cache_uri_delete_remote_disk(%struct.cache_uri* %97, i32* @disk_filter)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %3, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %110 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %109, i32 0, i32 1
  %111 = load %struct.cache_uri*, %struct.cache_uri** %110, align 8
  store %struct.cache_uri* %111, %struct.cache_uri** %5, align 8
  br label %88

112:                                              ; preds = %88
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %78

116:                                              ; preds = %78
  br label %117

117:                                              ; preds = %116, %76
  %118 = load i64, i64* %3, align 8
  %119 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  %120 = load i64, i64* %3, align 8
  %121 = load i64, i64* @INT_MAX, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i64, i64* %3, align 8
  br label %127

125:                                              ; preds = %117
  %126 = load i64, i64* @INT_MAX, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i64 [ %124, %123 ], [ %126, %125 ]
  %129 = trunc i64 %128 to i32
  ret i32 %129
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @cache_change_disk_status(%struct.lev_cache_change_disk_status*, i32) #1

declare dso_local i32 @cache_disk_filter_init(i32*, i32) #1

declare dso_local i32 @get_bucket_by_packed_location(i32) #1

declare dso_local %struct.cache_uri* @PNEXT(%struct.cache_uri*) #1

declare dso_local i32 @cache_uri_delete_remote_disk(%struct.cache_uri*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
