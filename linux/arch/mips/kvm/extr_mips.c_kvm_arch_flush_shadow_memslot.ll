; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_arch_flush_shadow_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_arch_flush_shadow_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm*, %struct.kvm_memory_slot*)* }
%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, i64 }

@kvm_mips_callbacks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_flush_shadow_memslot(%struct.kvm* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @kvm_mips_flush_gpa_pt(%struct.kvm* %8, i64 %11, i64 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_mips_callbacks, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.kvm*, %struct.kvm_memory_slot*)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*)** %22, align 8
  %24 = load %struct.kvm*, %struct.kvm** %3, align 8
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %26 = call i32 %23(%struct.kvm* %24, %struct.kvm_memory_slot* %25)
  %27 = load %struct.kvm*, %struct.kvm** %3, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_mips_flush_gpa_pt(%struct.kvm*, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
