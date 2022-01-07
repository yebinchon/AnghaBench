; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_ci_leaf_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_ci_leaf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cacheinfo = type { i32, i64, i64, i32, i64, i64, i32, i32, i32, i32 }
%struct._cpuid4_info_regs = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@CACHE_ID = common dso_local global i32 0, align 4
@cache_type_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cacheinfo*, %struct._cpuid4_info_regs*)* @ci_leaf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_leaf_init(%struct.cacheinfo* %0, %struct._cpuid4_info_regs* %1) #0 {
  %3 = alloca %struct.cacheinfo*, align 8
  %4 = alloca %struct._cpuid4_info_regs*, align 8
  store %struct.cacheinfo* %0, %struct.cacheinfo** %3, align 8
  store %struct._cpuid4_info_regs* %1, %struct._cpuid4_info_regs** %4, align 8
  %5 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %6 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %9 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @CACHE_ID, align 4
  %11 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %12 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %14 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %19 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** @cache_type_map, align 8
  %21 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %22 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %29 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %31 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %37 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %36, i32 0, i32 5
  store i64 %35, i64* %37, align 8
  %38 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %39 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %45 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %47 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %50 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %52 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %58 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %60 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %66 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %4, align 8
  %68 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cacheinfo*, %struct.cacheinfo** %3, align 8
  %71 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
