; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_rdt_get_cache_alloc_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_rdt_get_cache_alloc_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32, i32, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%union.cpuid_0x10_1_eax = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.cpuid_0x10_x_edx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rdt_resource*)* @rdt_get_cache_alloc_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdt_get_cache_alloc_cfg(i32 %0, %struct.rdt_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdt_resource*, align 8
  %5 = alloca %union.cpuid_0x10_1_eax, align 4
  %6 = alloca %union.cpuid_0x10_x_edx, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rdt_resource* %1, %struct.rdt_resource** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = bitcast %union.cpuid_0x10_1_eax* %5 to i32*
  %11 = bitcast %union.cpuid_0x10_x_edx* %6 to i32*
  %12 = call i32 @cpuid_count(i32 16, i32 %9, i32* %10, i32* %7, i32* %8, i32* %11)
  %13 = bitcast %union.cpuid_0x10_x_edx* %6 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %18 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  %19 = bitcast %union.cpuid_0x10_1_eax* %5 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %24 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = bitcast %union.cpuid_0x10_1_eax* %5 to %struct.TYPE_5__*
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @BIT_MASK(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %33 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %36 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %40 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %43 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 3
  %47 = sdiv i32 %46, 4
  %48 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %49 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %51 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %53 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  ret void
}

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
