; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_uncached.c_uncached_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_uncached.c_uncached_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uncached_pool = type { i32* }

@MAX_NUMNODES = common dso_local global i32 0, align 4
@N_HIGH_MEMORY = common dso_local global i32 0, align 4
@uncached_pools = common dso_local global %struct.uncached_pool* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uncached_alloc_page(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uncached_pool*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_NUMNODES, align 4
  %11 = icmp sge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %67

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @numa_node_id()
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %59, %21
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @N_HIGH_MEMORY, align 4
  %26 = call i32 @node_state(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %59

29:                                               ; preds = %23
  %30 = load %struct.uncached_pool*, %struct.uncached_pool** @uncached_pools, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %30, i64 %32
  store %struct.uncached_pool* %33, %struct.uncached_pool** %7, align 8
  %34 = load %struct.uncached_pool*, %struct.uncached_pool** %7, align 8
  %35 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %59

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %53, %39
  %41 = load %struct.uncached_pool*, %struct.uncached_pool** %7, align 8
  %42 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i64 @gen_pool_alloc(i32* %43, i32 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %67

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.uncached_pool*, %struct.uncached_pool** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @uncached_add_chunk(%struct.uncached_pool* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %40, label %58

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %38, %28
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @MAX_NUMNODES, align 4
  %63 = srem i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %23, label %66

66:                                               ; preds = %59
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %66, %50, %15
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @node_state(i32, i32) #1

declare dso_local i64 @gen_pool_alloc(i32*, i32) #1

declare dso_local i64 @uncached_add_chunk(%struct.uncached_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
