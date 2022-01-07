; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_redistribute_memory.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_redistribute_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@entry_memory = common dso_local global double 0.000000e+00, align 8
@memory_for_entries = common dso_local global double 0.000000e+00, align 8
@memory_for_metafiles = common dso_local global i32 0, align 4
@MIN_MEMORY_FOR_METAFILES = common dso_local global i32 0, align 4
@memory_for_cache = common dso_local global i32 0, align 4
@MIN_MEMORY_FOR_CACHE = common dso_local global i32 0, align 4
@memory_for_wildcard_cache = common dso_local global i32 0, align 4
@MIN_MEMORY_FOR_WILDCARD_CACHE = common dso_local global i32 0, align 4
@MEMORY_RESERVED = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@init_memory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redistribute_memory() #0 {
  %1 = load double, double* @entry_memory, align 8
  %2 = load double, double* @memory_for_entries, align 8
  %3 = fmul double 8.000000e-01, %2
  %4 = fcmp ole double %1, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %47

6:                                                ; preds = %0
  %7 = load i32, i32* @memory_for_metafiles, align 4
  %8 = sdiv i32 %7, 2
  store i32 %8, i32* @memory_for_metafiles, align 4
  %9 = load i32, i32* @memory_for_metafiles, align 4
  %10 = load i32, i32* @MIN_MEMORY_FOR_METAFILES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i32, i32* @MIN_MEMORY_FOR_METAFILES, align 4
  store i32 %13, i32* @memory_for_metafiles, align 4
  br label %14

14:                                               ; preds = %12, %6
  %15 = load i32, i32* @memory_for_cache, align 4
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* @memory_for_cache, align 4
  %17 = load i32, i32* @memory_for_cache, align 4
  %18 = load i32, i32* @MIN_MEMORY_FOR_CACHE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @MIN_MEMORY_FOR_CACHE, align 4
  store i32 %21, i32* @memory_for_cache, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, i32* @memory_for_wildcard_cache, align 4
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* @memory_for_wildcard_cache, align 4
  %25 = load i32, i32* @memory_for_wildcard_cache, align 4
  %26 = load i32, i32* @MIN_MEMORY_FOR_WILDCARD_CACHE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @MIN_MEMORY_FOR_WILDCARD_CACHE, align 4
  store i32 %29, i32* @memory_for_wildcard_cache, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32, i32* @MEMORY_RESERVED, align 4
  %32 = sub nsw i32 1, %31
  %33 = load i32, i32* @max_memory, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* @memory_for_cache, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %35, %37
  %39 = load i32, i32* @memory_for_metafiles, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = load i64, i64* @init_memory, align 8
  %43 = sub nsw i64 %41, %42
  %44 = sitofp i64 %43 to double
  store double %44, double* @memory_for_entries, align 8
  %45 = call i32 (...) @free_cache()
  %46 = call i32 (...) @free_metafiles()
  br label %47

47:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @free_cache(...) #1

declare dso_local i32 @free_metafiles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
