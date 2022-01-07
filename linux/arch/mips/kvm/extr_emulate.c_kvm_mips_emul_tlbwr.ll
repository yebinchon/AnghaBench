; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emul_tlbwr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emul_tlbwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.kvm_mips_tlb*, %struct.mips_coproc* }
%struct.kvm_mips_tlb = type { i32*, i32, i32 }
%struct.mips_coproc = type { i32 }

@KVM_MIPS_GUEST_TLB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"[%#lx] COP0_TLBWR[%d] (entryhi: %#lx, entrylo0: %#lx entrylo1: %#lx)\0A\00", align 1
@EMULATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emul_tlbwr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.mips_coproc*, align 8
  %4 = alloca %struct.kvm_mips_tlb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  store %struct.mips_coproc* %10, %struct.mips_coproc** %3, align 8
  store %struct.kvm_mips_tlb* null, %struct.kvm_mips_tlb** %4, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @KVM_MIPS_GUEST_TLB_SIZE, align 4
  %16 = call i32 @prandom_u32_max(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %20, i64 %22
  store %struct.kvm_mips_tlb* %23, %struct.kvm_mips_tlb** %4, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %26 = call i32 @kvm_mips_invalidate_guest_tlb(%struct.kvm_vcpu* %24, %struct.kvm_mips_tlb* %25)
  %27 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %28 = call i32 @kvm_read_c0_guest_pagemask(%struct.mips_coproc* %27)
  %29 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %32 = call i32 @kvm_read_c0_guest_entryhi(%struct.mips_coproc* %31)
  %33 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %36 = call i32 @kvm_read_c0_guest_entrylo0(%struct.mips_coproc* %35)
  %37 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %42 = call i32 @kvm_read_c0_guest_entrylo1(%struct.mips_coproc* %41)
  %43 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %50 = call i32 @kvm_read_c0_guest_entryhi(%struct.mips_coproc* %49)
  %51 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %52 = call i32 @kvm_read_c0_guest_entrylo0(%struct.mips_coproc* %51)
  %53 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %54 = call i32 @kvm_read_c0_guest_entrylo1(%struct.mips_coproc* %53)
  %55 = call i32 @kvm_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %48, i32 %50, i32 %52, i32 %54)
  %56 = load i32, i32* @EMULATE_DONE, align 4
  ret i32 %56
}

declare dso_local i32 @prandom_u32_max(i32) #1

declare dso_local i32 @kvm_mips_invalidate_guest_tlb(%struct.kvm_vcpu*, %struct.kvm_mips_tlb*) #1

declare dso_local i32 @kvm_read_c0_guest_pagemask(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_read_c0_guest_entryhi(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_read_c0_guest_entrylo0(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_read_c0_guest_entrylo1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_debug(i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
