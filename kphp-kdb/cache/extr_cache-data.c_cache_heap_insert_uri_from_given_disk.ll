; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_heap_insert_uri_from_given_disk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_heap_insert_uri_from_given_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"cache_heap_insert_uri_from_given_disk (%s)\0A\00", align 1
@uri_off = common dso_local global i32 0, align 4
@LC = common dso_local global i64 0, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@disk_filter = common dso_local global i32 0, align 4
@heap_acounter_off = common dso_local global i64 0, align 8
@tbl_foreach = common dso_local global i32 0, align 4
@heap_foreach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_uri*)* @cache_heap_insert_uri_from_given_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_heap_insert_uri_from_given_disk(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amortization_counter*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %6 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %7 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* @uri_off, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %14 = load i64, i64* @LC, align 8
  %15 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %16 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %13, i64 %14, i32 %15, i32 0, i32* null)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %49

20:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i64, i64* @LC, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i64 @cache_uri_local_copy_disk_filter_match(i64 %29, i32* @disk_filter)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %34 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @heap_acounter_off, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = bitcast i32* %37 to %struct.amortization_counter*
  store %struct.amortization_counter* %38, %struct.amortization_counter** %5, align 8
  %39 = load i32, i32* @tbl_foreach, align 4
  %40 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %41 = call i32 @amortization_counter_update(i32 %39, %struct.amortization_counter* %40)
  %42 = load i32, i32* @heap_foreach, align 4
  %43 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %44 = call i32 @cache_heap_insert(i32 %42, %struct.cache_uri* %43)
  br label %49

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %21

49:                                               ; preds = %19, %32, %21
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32*) #1

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, i64, i32, i32, i32*) #1

declare dso_local i64 @cache_uri_local_copy_disk_filter_match(i64, i32*) #1

declare dso_local i32 @amortization_counter_update(i32, %struct.amortization_counter*) #1

declare dso_local i32 @cache_heap_insert(i32, %struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
