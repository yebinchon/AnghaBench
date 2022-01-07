; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu.c_kvmppc_mmu_book3s_32_ea_to_vp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu.c_kvmppc_mmu_book3s_32_ea_to_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_pte = type { i32 }

@SID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @kvmppc_mmu_book3s_32_ea_to_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_mmu_book3s_32_ea_to_vp(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvmppc_pte, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @kvmppc_mmu_book3s_32_xlate_bat(%struct.kvm_vcpu* %10, i32 %11, %struct.kvmppc_pte* %9, i32 %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %9, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SID_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = call i32 @kvmppc_mmu_book3s_32_esid_to_vsid(%struct.kvm_vcpu* %19, i32 %22, i32* %8)
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 12
  %26 = and i32 %25, 65535
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %26, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @kvmppc_mmu_book3s_32_xlate_bat(%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_book3s_32_esid_to_vsid(%struct.kvm_vcpu*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
