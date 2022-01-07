; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_event.c_riscv_map_cache_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_event.c_riscv_map_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32**** }

@ENOENT = common dso_local global i32 0, align 4
@riscv_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RISCV_OP_UNSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @riscv_map_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riscv_map_cache_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @riscv_map_cache_decode(i32 %11, i32* %4, i32* %5, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @riscv_pmu, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32****, i32***** %14, align 8
  %16 = icmp ne i32**** %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26, %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %62

37:                                               ; preds = %30
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @riscv_pmu, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32****, i32***** %39, align 8
  %41 = load i32***, i32**** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32**, i32*** %41, i64 %43
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @RISCV_OP_UNSUPP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %37
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %37
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %57, %34, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @riscv_map_cache_decode(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
