; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_core_commit_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_core_commit_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.kvm*, %struct.kvm_userspace_memory_region*, %struct.kvm_memory_slot*, %struct.kvm_memory_slot*, i32)* }
%struct.kvm_userspace_memory_region = type { i32 }
%struct.kvm_memory_slot = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_core_commit_memory_region(%struct.kvm* %0, %struct.kvm_userspace_memory_region* %1, %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot* %3, i32 %4) #0 {
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_userspace_memory_region*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_userspace_memory_region* %1, %struct.kvm_userspace_memory_region** %7, align 8
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %8, align 8
  store %struct.kvm_memory_slot* %3, %struct.kvm_memory_slot** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.kvm*, %struct.kvm** %6, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.kvm*, %struct.kvm_userspace_memory_region*, %struct.kvm_memory_slot*, %struct.kvm_memory_slot*, i32)*, i32 (%struct.kvm*, %struct.kvm_userspace_memory_region*, %struct.kvm_memory_slot*, %struct.kvm_memory_slot*, i32)** %15, align 8
  %17 = load %struct.kvm*, %struct.kvm** %6, align 8
  %18 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %7, align 8
  %19 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %20 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 %16(%struct.kvm* %17, %struct.kvm_userspace_memory_region* %18, %struct.kvm_memory_slot* %19, %struct.kvm_memory_slot* %20, i32 %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
