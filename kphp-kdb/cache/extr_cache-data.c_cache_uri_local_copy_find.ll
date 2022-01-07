; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_local_copy_find.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_local_copy_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i32 }
%struct.cache_uri = type { i32 }

@LC = common dso_local global %struct.cache_local_copy* null, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@disk_filter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_local_copy* @cache_uri_local_copy_find(%struct.cache_uri* %0, i32* %1) #0 {
  %3 = alloca %struct.cache_local_copy*, align 8
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cache_uri* %0, %struct.cache_uri** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %9 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %10 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %11 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %8, %struct.cache_local_copy* %9, i32 %10, i32 1, i32* null)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %17, i64 %19
  %21 = call i64 @cache_uri_local_copy_disk_filter_match(%struct.cache_local_copy* %20, i32* @disk_filter)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %24, i64 %26
  store %struct.cache_local_copy* %27, %struct.cache_local_copy** %3, align 8
  br label %33

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %12

32:                                               ; preds = %12
  store %struct.cache_local_copy* null, %struct.cache_local_copy** %3, align 8
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.cache_local_copy*, %struct.cache_local_copy** %3, align 8
  ret %struct.cache_local_copy* %34
}

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, %struct.cache_local_copy*, i32, i32, i32*) #1

declare dso_local i64 @cache_uri_local_copy_disk_filter_match(%struct.cache_local_copy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
