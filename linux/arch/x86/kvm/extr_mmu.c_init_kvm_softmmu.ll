; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_init_kvm_softmmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_init_kvm_softmmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { i32, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@get_cr3 = common dso_local global i32 0, align 4
@kvm_pdptr_read = common dso_local global i32 0, align 4
@kvm_inject_page_fault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @init_kvm_softmmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_kvm_softmmu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.kvm_mmu*, %struct.kvm_mmu** %6, align 8
  store %struct.kvm_mmu* %7, %struct.kvm_mmu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i32 @kvm_init_shadow_mmu(%struct.kvm_vcpu* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @get_cr3, align 4
  %16 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @kvm_pdptr_read, align 4
  %19 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @kvm_inject_page_fault, align 4
  %22 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @kvm_init_shadow_mmu(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
