; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c___populate_cache_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c___populate_cache_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i32, %struct.cacheinfo* }
%struct.cacheinfo = type { i32 }
%struct._cpuid4_info_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__populate_cache_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__populate_cache_leaves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_cacheinfo*, align 8
  %7 = alloca %struct.cacheinfo*, align 8
  %8 = alloca %struct._cpuid4_info_regs, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %9)
  store %struct.cpu_cacheinfo* %10, %struct.cpu_cacheinfo** %6, align 8
  %11 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %6, align 8
  %12 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %11, i32 0, i32 2
  %13 = load %struct.cacheinfo*, %struct.cacheinfo** %12, align 8
  store %struct.cacheinfo* %13, %struct.cacheinfo** %7, align 8
  %14 = bitcast %struct._cpuid4_info_regs* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %38, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %6, align 8
  %18 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @cpuid4_cache_lookup_regs(i32 %22, %struct._cpuid4_info_regs* %8)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @get_cache_id(i32 %29, %struct._cpuid4_info_regs* %8)
  %31 = load %struct.cacheinfo*, %struct.cacheinfo** %7, align 8
  %32 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %31, i32 1
  store %struct.cacheinfo* %32, %struct.cacheinfo** %7, align 8
  %33 = ptrtoint %struct.cacheinfo* %31 to i32
  %34 = call i32 @ci_leaf_init(i32 %33, %struct._cpuid4_info_regs* %8)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @__cache_cpumap_setup(i32 %35, i32 %36, %struct._cpuid4_info_regs* %8)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %6, align 8
  %43 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cpuid4_cache_lookup_regs(i32, %struct._cpuid4_info_regs*) #1

declare dso_local i32 @get_cache_id(i32, %struct._cpuid4_info_regs*) #1

declare dso_local i32 @ci_leaf_init(i32, %struct._cpuid4_info_regs*) #1

declare dso_local i32 @__cache_cpumap_setup(i32, i32, %struct._cpuid4_info_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
