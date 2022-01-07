; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_lmb_to_memblock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_lmb_to_memblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { i32 }
%struct.drmem_lmb = type { i32 }
%struct.mem_section = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.memory_block* (%struct.drmem_lmb*)* @lmb_to_memblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.memory_block* @lmb_to_memblock(%struct.drmem_lmb* %0) #0 {
  %2 = alloca %struct.drmem_lmb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mem_section*, align 8
  %5 = alloca %struct.memory_block*, align 8
  store %struct.drmem_lmb* %0, %struct.drmem_lmb** %2, align 8
  %6 = load %struct.drmem_lmb*, %struct.drmem_lmb** %2, align 8
  %7 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @PFN_DOWN(i32 %8)
  %10 = call i64 @pfn_to_section_nr(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.mem_section* @__nr_to_section(i64 %11)
  store %struct.mem_section* %12, %struct.mem_section** %4, align 8
  %13 = load %struct.mem_section*, %struct.mem_section** %4, align 8
  %14 = call %struct.memory_block* @find_memory_block(%struct.mem_section* %13)
  store %struct.memory_block* %14, %struct.memory_block** %5, align 8
  %15 = load %struct.memory_block*, %struct.memory_block** %5, align 8
  ret %struct.memory_block* %15
}

declare dso_local i64 @pfn_to_section_nr(i32) #1

declare dso_local i32 @PFN_DOWN(i32) #1

declare dso_local %struct.mem_section* @__nr_to_section(i64) #1

declare dso_local %struct.memory_block* @find_memory_block(%struct.mem_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
