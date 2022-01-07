; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_cache_alloc_hsw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_cache_alloc_hsw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@RDT_RESOURCE_L3 = common dso_local global i64 0, align 8
@MSR_IA32_L3_CBM_BASE = common dso_local global i32 0, align 4
@rdt_alloc_capable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_alloc_hsw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_alloc_hsw_probe() #0 {
  %1 = alloca %struct.rdt_resource*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %6 = load i64, i64* @RDT_RESOURCE_L3, align 8
  %7 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %5, i64 %6
  store %struct.rdt_resource* %7, %struct.rdt_resource** %1, align 8
  %8 = call i64 @BIT_MASK(i32 20)
  %9 = sub nsw i64 %8, 1
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @MSR_IA32_L3_CBM_BASE, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @wrmsr_safe(i32 %10, i64 %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %43

15:                                               ; preds = %0
  %16 = load i32, i32* @MSR_IA32_L3_CBM_BASE, align 4
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @rdmsr(i32 %16, i64 %17, i64 %18)
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %43

24:                                               ; preds = %15
  %25 = load %struct.rdt_resource*, %struct.rdt_resource** %1, align 8
  %26 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.rdt_resource*, %struct.rdt_resource** %1, align 8
  %29 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load %struct.rdt_resource*, %struct.rdt_resource** %1, align 8
  %31 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 20, i32* %32, align 4
  %33 = load %struct.rdt_resource*, %struct.rdt_resource** %1, align 8
  %34 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 786432, i32* %35, align 4
  %36 = load %struct.rdt_resource*, %struct.rdt_resource** %1, align 8
  %37 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 2, i32* %38, align 4
  %39 = load %struct.rdt_resource*, %struct.rdt_resource** %1, align 8
  %40 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.rdt_resource*, %struct.rdt_resource** %1, align 8
  %42 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  store i32 1, i32* @rdt_alloc_capable, align 4
  br label %43

43:                                               ; preds = %24, %23, %14
  ret void
}

declare dso_local i64 @BIT_MASK(i32) #1

declare dso_local i64 @wrmsr_safe(i32, i64, i32) #1

declare dso_local i32 @rdmsr(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
