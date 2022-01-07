; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_arch_mmu_enable_log_dirty_pt_masked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_arch_mmu_enable_log_dirty_pt_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm*, %struct.kvm_memory_slot*, i32, i64)* }
%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_mmu_enable_log_dirty_pt_masked(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.kvm*, %struct.kvm_memory_slot*, i32, i64)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*, i32, i64)** %10, align 8
  %12 = icmp ne i32 (%struct.kvm*, %struct.kvm_memory_slot*, i32, i64)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.kvm*, %struct.kvm_memory_slot*, i32, i64)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*, i32, i64)** %15, align 8
  %17 = load %struct.kvm*, %struct.kvm** %5, align 8
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 %16(%struct.kvm* %17, %struct.kvm_memory_slot* %18, i32 %19, i64 %20)
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.kvm*, %struct.kvm** %5, align 8
  %24 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @kvm_mmu_write_protect_pt_masked(%struct.kvm* %23, %struct.kvm_memory_slot* %24, i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @kvm_mmu_write_protect_pt_masked(%struct.kvm*, %struct.kvm_memory_slot*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
