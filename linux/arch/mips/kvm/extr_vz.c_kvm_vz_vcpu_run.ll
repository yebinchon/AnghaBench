; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.kvm_run.0*, %struct.kvm_vcpu.1*)* }
%struct.kvm_run.0 = type opaque
%struct.kvm_vcpu.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_run*, %struct.kvm_vcpu*)* @kvm_vz_vcpu_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_vcpu_run(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.kvm_run*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %3, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i32 @kvm_vz_acquire_htimer(%struct.kvm_vcpu* %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 (...) @read_gc0_cause()
  %12 = call i32 @kvm_mips_deliver_interrupts(%struct.kvm_vcpu* %10, i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @kvm_vz_check_requests(%struct.kvm_vcpu* %13, i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @kvm_vz_vcpu_load_tlb(%struct.kvm_vcpu* %16, i32 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = call i32 @kvm_vz_vcpu_load_wired(%struct.kvm_vcpu* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.kvm_run.0*, %struct.kvm_vcpu.1*)*, i32 (%struct.kvm_run.0*, %struct.kvm_vcpu.1*)** %23, align 8
  %25 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %26 = bitcast %struct.kvm_run* %25 to %struct.kvm_run.0*
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = bitcast %struct.kvm_vcpu* %27 to %struct.kvm_vcpu.1*
  %29 = call i32 %24(%struct.kvm_run.0* %26, %struct.kvm_vcpu.1* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = call i32 @kvm_vz_vcpu_save_wired(%struct.kvm_vcpu* %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @kvm_vz_acquire_htimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_deliver_interrupts(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @read_gc0_cause(...) #1

declare dso_local i32 @kvm_vz_check_requests(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vz_vcpu_load_tlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vz_vcpu_load_wired(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vz_vcpu_save_wired(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
