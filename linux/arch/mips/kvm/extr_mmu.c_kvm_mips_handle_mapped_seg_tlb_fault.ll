; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_handle_mapped_seg_tlb_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_handle_mapped_seg_tlb_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_mips_tlb = type { i64* }

@KVM_GUEST_COMMPAGE_ADDR = common dso_local global i64 0, align 8
@VPN2_MASK = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@ENTRYLO_V = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"No ptep for gva %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"@ %#lx tlb_lo0: 0x%08lx tlb_lo1: 0x%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_handle_mapped_seg_tlb_fault(%struct.kvm_vcpu* %0, %struct.kvm_mips_tlb* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_mips_tlb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca [2 x i64], align 16
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_mips_tlb* %1, %struct.kvm_mips_tlb** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 1
  %19 = load %struct.kvm*, %struct.kvm** %18, align 8
  store %struct.kvm* %19, %struct.kvm** %10, align 8
  %20 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %20, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i64 @TLB_LO_IDX(i64* %23, i64 %21)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = call i32 @KVM_GUEST_KERNEL_MODE(%struct.kvm_vcpu* %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %32, i64* %33, align 16
  %34 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %7, align 8
  %35 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @KVM_GUEST_COMMPAGE_ADDR, align 8
  %42 = xor i64 %40, %41
  %43 = load i64, i64* @VPN2_MASK, align 8
  %44 = and i64 %42, %43
  %45 = load i32, i32* @PAGE_MASK, align 4
  %46 = shl i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %4
  %51 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %7, align 8
  %52 = load i64, i64* @KVM_GUEST_COMMPAGE_ADDR, align 8
  %53 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %51, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = call i64 @TLB_LO_IDX(i64* %54, i64 %52)
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %55
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %59 = load i32, i32* %15, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @mips3_tlbpfn_to_paddr(i64 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %66
  %68 = call i64 @kvm_mips_map_page(%struct.kvm_vcpu* %58, i32 %63, i32 %64, i32* %67, i32* null)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %169

71:                                               ; preds = %57
  %72 = call i32 @__pgprot(i32 0)
  %73 = call i32 @pfn_pte(i32 0, i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ENTRYLO_V, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %71
  %91 = load %struct.kvm*, %struct.kvm** %10, align 8
  %92 = getelementptr inbounds %struct.kvm, %struct.kvm* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.kvm*, %struct.kvm** %10, align 8
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @mips3_tlbpfn_to_paddr(i64 %101)
  %103 = call i32* @kvm_mips_pte_for_gpa(%struct.kvm* %94, i32* null, i32 %102)
  store i32* %103, i32** %13, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %90
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %90
  %116 = load %struct.kvm*, %struct.kvm** %10, align 8
  %117 = getelementptr inbounds %struct.kvm, %struct.kvm* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  br label %119

119:                                              ; preds = %115, %71
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = xor i64 %122, -1
  %124 = and i64 %121, %123
  %125 = call i32* @kvm_trap_emul_pte_for_gva(%struct.kvm_vcpu* %120, i64 %124)
  store i32* %125, i32** %14, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @kvm_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %129)
  store i32 -1, i32* %5, align 4
  br label %169

131:                                              ; preds = %119
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %135 = load i64, i64* %134, align 16
  %136 = call i32 @kvm_mips_gpa_pte_to_gva_mapped(i32 %133, i64 %135)
  %137 = load i32*, i32** %14, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @kvm_mips_gpa_pte_to_gva_mapped(i32 %140, i64 %142)
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @kvm_mips_host_tlb_inv(%struct.kvm_vcpu* %146, i64 %147, i32 %151, i32 %152)
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %155 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %7, align 8
  %159 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %7, align 8
  %164 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @kvm_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %157, i64 %162, i64 %167)
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %131, %128, %70
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i64 @TLB_LO_IDX(i64*, i64) #1

declare dso_local i32 @KVM_GUEST_KERNEL_MODE(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_mips_map_page(%struct.kvm_vcpu*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mips3_tlbpfn_to_paddr(i64) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @kvm_mips_pte_for_gpa(%struct.kvm*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32* @kvm_trap_emul_pte_for_gva(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_err(i8*, i64) #1

declare dso_local i32 @kvm_mips_gpa_pte_to_gva_mapped(i32, i64) #1

declare dso_local i32 @kvm_mips_host_tlb_inv(%struct.kvm_vcpu*, i64, i32, i32) #1

declare dso_local i32 @kvm_debug(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
