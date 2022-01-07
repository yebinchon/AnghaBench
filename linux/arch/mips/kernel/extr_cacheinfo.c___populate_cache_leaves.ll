; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cacheinfo.c___populate_cache_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cacheinfo.c___populate_cache_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.cpu_cacheinfo = type { i32, %struct.cacheinfo* }
%struct.cacheinfo = type { i32 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@dcache = common dso_local global i32 0, align 4
@CACHE_TYPE_DATA = common dso_local global i32 0, align 4
@icache = common dso_local global i32 0, align 4
@CACHE_TYPE_INST = common dso_local global i32 0, align 4
@CACHE_TYPE_UNIFIED = common dso_local global i32 0, align 4
@scache = common dso_local global i32 0, align 4
@tcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__populate_cache_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__populate_cache_leaves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca %struct.cpu_cacheinfo*, align 8
  %5 = alloca %struct.cacheinfo*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %6)
  store %struct.cpu_cacheinfo* %7, %struct.cpu_cacheinfo** %4, align 8
  %8 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %9 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %8, i32 0, i32 1
  %10 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  store %struct.cacheinfo* %10, %struct.cacheinfo** %5, align 8
  %11 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %12 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @dcache, align 4
  %18 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %19 = load i32, i32* @CACHE_TYPE_DATA, align 4
  %20 = call i32 @populate_cache(i32 %17, %struct.cacheinfo* %18, i32 1, i32 %19)
  %21 = load i32, i32* @icache, align 4
  %22 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %23 = load i32, i32* @CACHE_TYPE_INST, align 4
  %24 = call i32 @populate_cache(i32 %21, %struct.cacheinfo* %22, i32 1, i32 %23)
  br label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @dcache, align 4
  %27 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %28 = load i32, i32* @CACHE_TYPE_UNIFIED, align 4
  %29 = call i32 @populate_cache(i32 %26, %struct.cacheinfo* %27, i32 1, i32 %28)
  br label %30

30:                                               ; preds = %25, %16
  %31 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @scache, align 4
  %38 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %39 = load i32, i32* @CACHE_TYPE_UNIFIED, align 4
  %40 = call i32 @populate_cache(i32 %37, %struct.cacheinfo* %38, i32 2, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %43 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @tcache, align 4
  %49 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %50 = load i32, i32* @CACHE_TYPE_UNIFIED, align 4
  %51 = call i32 @populate_cache(i32 %48, %struct.cacheinfo* %49, i32 3, i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %54 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  ret i32 0
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @populate_cache(i32, %struct.cacheinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
