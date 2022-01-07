; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_cache_wbinval_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_cache_wbinval_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@L1_cache_info = common dso_local global %struct.TYPE_2__* null, align 8
@DCACHE = common dso_local global i64 0, align 8
@ICACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_cache_wbinval_range(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %11 = load i64, i64* @DCACHE, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 %16, 1
  %18 = xor i64 %17, -1
  %19 = and i64 %15, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %24, 1
  %26 = xor i64 %25, -1
  %27 = and i64 %23, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @cpu_dcache_wbinval_range(i64 %28, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %35 = load i64, i64* @ICACHE, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 1
  %42 = xor i64 %41, -1
  %43 = and i64 %39, %42
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  %47 = sub i64 %46, 1
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = xor i64 %49, -1
  %51 = and i64 %47, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @cpu_icache_inval_range(i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32 @cpu_dcache_wbinval_range(i64, i64) #1

declare dso_local i32 @cpu_icache_inval_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
