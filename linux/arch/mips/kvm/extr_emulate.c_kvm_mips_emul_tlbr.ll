; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emul_tlbr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emul_tlbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.kvm_mips_tlb*, %struct.mips_coproc* }
%struct.kvm_mips_tlb = type { i32, i32*, i32 }
%struct.mips_coproc = type { i32 }

@KVM_MIPS_GUEST_TLB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[%#lx] TLBR Index %#x out of range\0A\00", align 1
@EMULATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emul_tlbr(%struct.kvm_vcpu* %0) #0 {
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
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %16 = call i32 @kvm_read_c0_guest_index(%struct.mips_coproc* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @KVM_MIPS_GUEST_TLB_SIZE, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %1
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @kvm_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  %27 = load i32, i32* @KVM_MIPS_GUEST_TLB_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %23, %19
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %35, i64 %37
  store %struct.kvm_mips_tlb* %38, %struct.kvm_mips_tlb** %4, align 8
  %39 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %40 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @kvm_write_c0_guest_pagemask(%struct.mips_coproc* %39, i32 %42)
  %44 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %45 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kvm_write_c0_guest_entrylo0(%struct.mips_coproc* %44, i32 %49)
  %51 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %52 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kvm_write_c0_guest_entrylo1(%struct.mips_coproc* %51, i32 %56)
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kvm_mips_change_entryhi(%struct.kvm_vcpu* %58, i32 %61)
  %63 = load i32, i32* @EMULATE_DONE, align 4
  ret i32 %63
}

declare dso_local i32 @kvm_read_c0_guest_index(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_debug(i8*, i64, i32) #1

declare dso_local i32 @kvm_write_c0_guest_pagemask(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_entrylo0(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_entrylo1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_mips_change_entryhi(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
