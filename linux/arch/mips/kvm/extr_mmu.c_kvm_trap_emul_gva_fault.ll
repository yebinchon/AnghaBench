; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_trap_emul_gva_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_trap_emul_gva_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_mips_tlb*, %struct.mips_coproc* }
%struct.kvm_mips_tlb = type { i32 }
%struct.mips_coproc = type { i32 }

@KVM_GUEST_KSEG0 = common dso_local global i64 0, align 8
@KVM_MIPS_GPA = common dso_local global i32 0, align 4
@KVM_GUEST_KSEG23 = common dso_local global i64 0, align 8
@VPN2_MASK = common dso_local global i64 0, align 8
@KVM_ENTRYHI_ASID = common dso_local global i64 0, align 8
@KVM_MIPS_TLB = common dso_local global i32 0, align 4
@KVM_MIPS_TLBINV = common dso_local global i32 0, align 4
@KVM_MIPS_TLBMOD = common dso_local global i32 0, align 4
@KVM_MIPS_GVA = common dso_local global i32 0, align 4
@KVM_MIPS_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_trap_emul_gva_fault(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mips_coproc*, align 8
  %9 = alloca %struct.kvm_mips_tlb*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.mips_coproc*, %struct.mips_coproc** %13, align 8
  store %struct.mips_coproc* %14, %struct.mips_coproc** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @KVM_GUEST_KSEGX(i64 %15)
  %17 = load i64, i64* @KVM_GUEST_KSEG0, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @kvm_mips_handle_kseg0_tlb_fault(i64 %20, %struct.kvm_vcpu* %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @KVM_MIPS_GPA, align 4
  store i32 %26, i32* %4, align 4
  br label %96

27:                                               ; preds = %19
  br label %94

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @KVM_GUEST_KSEGX(i64 %29)
  %31 = load i64, i64* @KVM_GUEST_KSEG0, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @KVM_GUEST_KSEGX(i64 %34)
  %36 = load i64, i64* @KVM_GUEST_KSEG23, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %33, %28
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @VPN2_MASK, align 8
  %42 = and i64 %40, %41
  %43 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %44 = call i64 @kvm_read_c0_guest_entryhi(%struct.mips_coproc* %43)
  %45 = load i64, i64* @KVM_ENTRYHI_ASID, align 8
  %46 = and i64 %44, %45
  %47 = or i64 %42, %46
  %48 = call i32 @kvm_mips_guest_tlb_lookup(%struct.kvm_vcpu* %39, i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @KVM_MIPS_TLB, align 4
  store i32 %52, i32* %4, align 4
  br label %96

53:                                               ; preds = %38
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %57, i64 %59
  store %struct.kvm_mips_tlb* %60, %struct.kvm_mips_tlb** %9, align 8
  %61 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %61, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @TLB_IS_VALID(i32 %64, i64 %62)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @KVM_MIPS_TLBINV, align 4
  store i32 %68, i32* %4, align 4
  br label %96

69:                                               ; preds = %53
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %9, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %73, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @TLB_IS_DIRTY(i32 %76, i64 %74)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @KVM_MIPS_TLBMOD, align 4
  store i32 %80, i32* %4, align 4
  br label %96

81:                                               ; preds = %72, %69
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %83 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %9, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @kvm_mips_handle_mapped_seg_tlb_fault(%struct.kvm_vcpu* %82, %struct.kvm_mips_tlb* %83, i64 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @KVM_MIPS_GPA, align 4
  store i32 %89, i32* %4, align 4
  br label %96

90:                                               ; preds = %81
  br label %93

91:                                               ; preds = %33
  %92 = load i32, i32* @KVM_MIPS_GVA, align 4
  store i32 %92, i32* %4, align 4
  br label %96

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93, %27
  %95 = load i32, i32* @KVM_MIPS_MAPPED, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %91, %88, %79, %67, %51, %25
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @KVM_GUEST_KSEGX(i64) #1

declare dso_local i64 @kvm_mips_handle_kseg0_tlb_fault(i64, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_guest_tlb_lookup(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_read_c0_guest_entryhi(%struct.mips_coproc*) #1

declare dso_local i32 @TLB_IS_VALID(i32, i64) #1

declare dso_local i32 @TLB_IS_DIRTY(i32, i64) #1

declare dso_local i64 @kvm_mips_handle_mapped_seg_tlb_fault(%struct.kvm_vcpu*, %struct.kvm_mips_tlb*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
