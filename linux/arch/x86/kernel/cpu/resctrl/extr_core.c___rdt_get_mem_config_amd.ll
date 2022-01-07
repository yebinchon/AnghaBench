; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c___rdt_get_mem_config_amd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c___rdt_get_mem_config_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32, i32, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%union.cpuid_0x10_3_eax = type { i32 }
%union.cpuid_0x10_x_edx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MAX_MBA_BW_AMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*)* @__rdt_get_mem_config_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rdt_get_mem_config_amd(%struct.rdt_resource* %0) #0 {
  %2 = alloca %struct.rdt_resource*, align 8
  %3 = alloca %union.cpuid_0x10_3_eax, align 4
  %4 = alloca %union.cpuid_0x10_x_edx, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %2, align 8
  %7 = bitcast %union.cpuid_0x10_3_eax* %3 to i32*
  %8 = bitcast %union.cpuid_0x10_x_edx* %4 to i32*
  %9 = call i32 @cpuid_count(i32 -2147483616, i32 1, i32* %7, i32* %5, i32* %6, i32* %8)
  %10 = bitcast %union.cpuid_0x10_x_edx* %4 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  %14 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %15 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %14, i32 0, i32 5
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @MAX_MBA_BW_AMD, align 4
  %17 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %18 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %20 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %23 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %26 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %29 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %31 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %33 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  ret i32 1
}

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
