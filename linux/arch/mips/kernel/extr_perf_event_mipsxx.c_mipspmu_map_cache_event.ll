; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_map_cache_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_map_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mips_perf_event**** }
%struct.mips_perf_event = type { i64 }

@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@mipspmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_perf_event* (i32)* @mipspmu_map_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_perf_event* @mipspmu_map_cache_event(i32 %0) #0 {
  %2 = alloca %struct.mips_perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mips_perf_event*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 0
  %10 = and i32 %9, 255
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.mips_perf_event* @ERR_PTR(i32 %16)
  store %struct.mips_perf_event* %17, %struct.mips_perf_event** %2, align 8
  br label %64

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.mips_perf_event* @ERR_PTR(i32 %27)
  store %struct.mips_perf_event* %28, %struct.mips_perf_event** %2, align 8
  br label %64

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.mips_perf_event* @ERR_PTR(i32 %38)
  store %struct.mips_perf_event* %39, %struct.mips_perf_event** %2, align 8
  br label %64

40:                                               ; preds = %29
  %41 = load %struct.mips_perf_event****, %struct.mips_perf_event***** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 0), align 8
  %42 = load %struct.mips_perf_event***, %struct.mips_perf_event**** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mips_perf_event**, %struct.mips_perf_event*** %42, i64 %44
  %46 = load %struct.mips_perf_event**, %struct.mips_perf_event*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mips_perf_event*, %struct.mips_perf_event** %46, i64 %48
  %50 = load %struct.mips_perf_event*, %struct.mips_perf_event** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mips_perf_event, %struct.mips_perf_event* %50, i64 %52
  store %struct.mips_perf_event* %53, %struct.mips_perf_event** %7, align 8
  %54 = load %struct.mips_perf_event*, %struct.mips_perf_event** %7, align 8
  %55 = getelementptr inbounds %struct.mips_perf_event, %struct.mips_perf_event* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %40
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.mips_perf_event* @ERR_PTR(i32 %60)
  store %struct.mips_perf_event* %61, %struct.mips_perf_event** %2, align 8
  br label %64

62:                                               ; preds = %40
  %63 = load %struct.mips_perf_event*, %struct.mips_perf_event** %7, align 8
  store %struct.mips_perf_event* %63, %struct.mips_perf_event** %2, align 8
  br label %64

64:                                               ; preds = %62, %58, %36, %25, %14
  %65 = load %struct.mips_perf_event*, %struct.mips_perf_event** %2, align 8
  ret %struct.mips_perf_event* %65
}

declare dso_local %struct.mips_perf_event* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
