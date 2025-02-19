; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_gfn_to_memslot_dirty_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_gfn_to_memslot_dirty_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_memory_slot* (%struct.kvm_vcpu*, i32, i32)* @gfn_to_memslot_dirty_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_memory_slot* @gfn_to_memslot_dirty_bitmap(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu* %8, i32 %9)
  store %struct.kvm_memory_slot* %10, %struct.kvm_memory_slot** %7, align 8
  %11 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @memslot_valid_for_gpte(%struct.kvm_memory_slot* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.kvm_memory_slot* null, %struct.kvm_memory_slot** %7, align 8
  br label %16

16:                                               ; preds = %15, %3
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  ret %struct.kvm_memory_slot* %17
}

declare dso_local %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @memslot_valid_for_gpte(%struct.kvm_memory_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
