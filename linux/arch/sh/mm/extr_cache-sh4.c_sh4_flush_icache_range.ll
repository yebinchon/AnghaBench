; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_sh4_flush_icache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_sh4_flush_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.flusher_data = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAX_ICACHE_PAGES = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CACHE_IC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@cpu_data = common dso_local global %struct.TYPE_7__* null, align 8
@boot_cpu_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh4_flush_icache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh4_flush_icache_range(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flusher_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.flusher_data*
  store %struct.flusher_data* %13, %struct.flusher_data** %3, align 8
  %14 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %15 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %18 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = sub i64 %20, %21
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = load i64, i64* @MAX_ICACHE_PAGES, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @local_flush_cache_all(i32* null)
  br label %110

29:                                               ; preds = %1
  %30 = load i32, i32* @L1_CACHE_BYTES, align 4
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* @L1_CACHE_BYTES, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i32, i32* @L1_CACHE_BYTES, align 4
  %42 = sub nsw i32 %41, 1
  %43 = xor i32 %42, -1
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %5, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @local_irq_save(i64 %47)
  %49 = call i32 (...) @jump_to_uncached()
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %101, %29
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @__ocbwb(i64 %56)
  %58 = load i64, i64* @CACHE_IC_ADDRESS_ARRAY, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpu_data, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %59, %63
  %65 = or i64 %58, %64
  store i64 %65, i64* %9, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @boot_cpu_data, i32 0, i32 0, i32 0), align 4
  store i32 %66, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %97, %55
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpu_data, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = add i64 %80, %84
  %86 = call i32 @__raw_writel(i32 0, i64 %85)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpu_data, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %67

100:                                              ; preds = %67
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* @L1_CACHE_BYTES, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %7, align 8
  br label %51

106:                                              ; preds = %51
  %107 = call i32 (...) @back_to_cached()
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @local_irq_restore(i64 %108)
  br label %110

110:                                              ; preds = %106, %27
  ret void
}

declare dso_local i32 @local_flush_cache_all(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i32 @__ocbwb(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
