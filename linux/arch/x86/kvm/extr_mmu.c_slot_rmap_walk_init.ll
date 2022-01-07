; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_slot_rmap_walk_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_slot_rmap_walk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_rmap_walk_iterator = type { i32, i32, i8*, i8*, %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slot_rmap_walk_iterator*, %struct.kvm_memory_slot*, i32, i32, i8*, i8*)* @slot_rmap_walk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slot_rmap_walk_init(%struct.slot_rmap_walk_iterator* %0, %struct.kvm_memory_slot* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.slot_rmap_walk_iterator*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.slot_rmap_walk_iterator* %0, %struct.slot_rmap_walk_iterator** %7, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %14 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %7, align 8
  %15 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %14, i32 0, i32 4
  store %struct.kvm_memory_slot* %13, %struct.kvm_memory_slot** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %7, align 8
  %18 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %7, align 8
  %21 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %7, align 8
  %24 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %7, align 8
  %27 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %7, align 8
  %29 = load %struct.slot_rmap_walk_iterator*, %struct.slot_rmap_walk_iterator** %7, align 8
  %30 = getelementptr inbounds %struct.slot_rmap_walk_iterator, %struct.slot_rmap_walk_iterator* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rmap_walk_init_level(%struct.slot_rmap_walk_iterator* %28, i32 %31)
  ret void
}

declare dso_local i32 @rmap_walk_init_level(%struct.slot_rmap_walk_iterator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
