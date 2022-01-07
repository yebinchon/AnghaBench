; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_guest_exception_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_guest_exception_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@ST0_BEV = common dso_local global i32 0, align 4
@MIPS_EBASE_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvm_mips_guest_exception_base(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.mips_coproc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  store %struct.mips_coproc* %8, %struct.mips_coproc** %4, align 8
  %9 = load %struct.mips_coproc*, %struct.mips_coproc** %4, align 8
  %10 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %9)
  %11 = load i32, i32* @ST0_BEV, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i64 @KVM_GUEST_CKSEG1ADDR(i32 532677120)
  store i64 %15, i64* %2, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.mips_coproc*, %struct.mips_coproc** %4, align 8
  %18 = call i64 @kvm_read_c0_guest_ebase(%struct.mips_coproc* %17)
  %19 = load i64, i64* @MIPS_EBASE_BASE, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i64 @KVM_GUEST_CKSEG1ADDR(i32) #1

declare dso_local i64 @kvm_read_c0_guest_ebase(%struct.mips_coproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
