; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_calc_mmu_role_ext.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_calc_mmu_role_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%union.kvm_mmu_extended_role = type { i32 }

@X86_CR4_SMEP = common dso_local global i32 0, align 4
@X86_CR4_SMAP = common dso_local global i32 0, align 4
@X86_CR4_PKE = common dso_local global i32 0, align 4
@X86_CR4_LA57 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_calc_mmu_role_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_calc_mmu_role_ext(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %union.kvm_mmu_extended_role, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %4 = bitcast %union.kvm_mmu_extended_role* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @is_paging(%struct.kvm_vcpu* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %10, i32* %11, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 @is_pae(%struct.kvm_vcpu* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %17, i32* %18, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load i32, i32* @X86_CR4_SMEP, align 4
  %21 = call i32 @kvm_read_cr4_bits(%struct.kvm_vcpu* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %25, i32* %26, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = load i32, i32* @X86_CR4_SMAP, align 4
  %29 = call i32 @kvm_read_cr4_bits(%struct.kvm_vcpu* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %33, i32* %34, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i32 @is_pse(%struct.kvm_vcpu* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %40, i32* %41, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = load i32, i32* @X86_CR4_PKE, align 4
  %44 = call i32 @kvm_read_cr4_bits(%struct.kvm_vcpu* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %48, i32* %49, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = load i32, i32* @X86_CR4_LA57, align 4
  %52 = call i32 @kvm_read_cr4_bits(%struct.kvm_vcpu* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %56, i32* %57, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @cpuid_maxphyaddr(%struct.kvm_vcpu* %58)
  %60 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 %59, i32* %60, align 4
  %61 = bitcast %union.kvm_mmu_extended_role* %2 to i32*
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %union.kvm_mmu_extended_role, %union.kvm_mmu_extended_role* %2, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #2

declare dso_local i32 @is_pae(%struct.kvm_vcpu*) #2

declare dso_local i32 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #2

declare dso_local i32 @is_pse(%struct.kvm_vcpu*) #2

declare dso_local i32 @cpuid_maxphyaddr(%struct.kvm_vcpu*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
