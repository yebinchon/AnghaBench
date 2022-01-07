; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_metafile_unload_LRU.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_metafile_unload_LRU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_use = common dso_local global i64* null, align 8
@MAX_METAFILES = common dso_local global i64 0, align 8
@use_query_fails = common dso_local global i64 0, align 8
@metafiles_unload_LRU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metafile_unload_LRU() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64*, i64** @prev_use, align 8
  %4 = load i64, i64* @MAX_METAFILES, align 8
  %5 = getelementptr inbounds i64, i64* %3, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MAX_METAFILES, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  store i64 0, i64* @use_query_fails, align 8
  %11 = load i64*, i64** @prev_use, align 8
  %12 = load i64, i64* @MAX_METAFILES, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %37, %10
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @MAX_METAFILES, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @metafile_unload(i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @metafiles_unload_LRU, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @metafiles_unload_LRU, align 4
  store i32 1, i32* %1, align 4
  br label %39

28:                                               ; preds = %21
  %29 = load i64, i64* @use_query_fails, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @use_query_fails, align 8
  %31 = load i64*, i64** @prev_use, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %28
  br label %16

38:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %25, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i64 @metafile_unload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
