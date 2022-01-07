; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___gfn_to_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___gfn_to_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_rmap_head = type { i32 }
%struct.kvm_memory_slot = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.kvm_rmap_head** }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_rmap_head* (i32, i32, %struct.kvm_memory_slot*)* @__gfn_to_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_rmap_head* @__gfn_to_rmap(i32 %0, i32 %1, %struct.kvm_memory_slot* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %10 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @gfn_to_index(i32 %8, i32 %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %15 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.kvm_rmap_head**, %struct.kvm_rmap_head*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %17, i64 %21
  %23 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.kvm_rmap_head, %struct.kvm_rmap_head* %23, i64 %24
  ret %struct.kvm_rmap_head* %25
}

declare dso_local i64 @gfn_to_index(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
