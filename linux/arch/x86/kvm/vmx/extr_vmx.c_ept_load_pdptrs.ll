; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ept_load_pdptrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ept_load_pdptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_mmu* }
%struct.kvm_mmu = type { i32* }

@VCPU_EXREG_PDPTR = common dso_local global i32 0, align 4
@GUEST_PDPTR0 = common dso_local global i32 0, align 4
@GUEST_PDPTR1 = common dso_local global i32 0, align 4
@GUEST_PDPTR2 = common dso_local global i32 0, align 4
@GUEST_PDPTR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @ept_load_pdptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ept_load_pdptrs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.kvm_mmu*, %struct.kvm_mmu** %6, align 8
  store %struct.kvm_mmu* %7, %struct.kvm_mmu** %3, align 8
  %8 = load i32, i32* @VCPU_EXREG_PDPTR, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to i64*
  %13 = call i32 @test_bit(i32 %8, i64* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = call i64 @is_pae_paging(%struct.kvm_vcpu* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load i32, i32* @GUEST_PDPTR0, align 4
  %22 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vmcs_write64(i32 %21, i32 %26)
  %28 = load i32, i32* @GUEST_PDPTR1, align 4
  %29 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vmcs_write64(i32 %28, i32 %33)
  %35 = load i32, i32* @GUEST_PDPTR2, align 4
  %36 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vmcs_write64(i32 %35, i32 %40)
  %42 = load i32, i32* @GUEST_PDPTR3, align 4
  %43 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %44 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vmcs_write64(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %15, %20, %16
  ret void
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i64 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
