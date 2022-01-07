; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_sb_memory.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_sb_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [117 x i8] c"heap_allocated\09%ld\0Aheap_max\09%ld\0Awasted_heap_blocks\09%d\0Awasted_heap_bytes\09%ld\0Afree_heap_blocks\09%d\0Afree_heap_bytes\09%ld\0A\00", align 1
@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@dyn_top = common dso_local global i64 0, align 8
@wasted_blocks = common dso_local global i32 0, align 4
@wasted_bytes = common dso_local global i32 0, align 4
@freed_blocks = common dso_local global i32 0, align 4
@freed_bytes = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"vmsize_bytes\09%lld\0Avmrss_bytes\09%lld\0Avmdata_bytes\09%lld\0A\00", align 1
@AM_GET_MEMORY_USAGE_OVERALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"memfree_bytes\09%lld\0Aswap_used_bytes\09%lld\0Aswap_total_bytes\09%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sb_memory(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @dyn_update_stats()
  %7 = load i32*, i32** %3, align 8
  %8 = load i64, i64* @dyn_cur, align 8
  %9 = load i64, i64* @dyn_first, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i64, i64* @dyn_last, align 8
  %12 = load i64, i64* @dyn_top, align 8
  %13 = sub nsw i64 %11, %12
  %14 = add nsw i64 %10, %13
  %15 = load i64, i64* @dyn_last, align 8
  %16 = load i64, i64* @dyn_first, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i32, i32* @wasted_blocks, align 4
  %19 = load i32, i32* @wasted_bytes, align 4
  %20 = load i32, i32* @freed_blocks, align 4
  %21 = load i32, i32* @freed_bytes, align 4
  %22 = call i32 (i32*, i8*, i64, i64, i32, ...) @sb_printf(i32* %7, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @am_get_memory_stats(%struct.TYPE_3__* %5, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, i64, i64, i32, ...) @sb_printf(i32* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %35, i32 %37)
  br label %39

39:                                               ; preds = %28, %2
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AM_GET_MEMORY_USAGE_OVERALL, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @am_get_memory_stats(%struct.TYPE_3__* %5, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32*, i8*, i64, i64, i32, ...) @sb_printf(i32* %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %49, i64 %52, i32 %54)
  br label %56

56:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @dyn_update_stats(...) #1

declare dso_local i32 @sb_printf(i32*, i8*, i64, i64, i32, ...) #1

declare dso_local i32 @am_get_memory_stats(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
