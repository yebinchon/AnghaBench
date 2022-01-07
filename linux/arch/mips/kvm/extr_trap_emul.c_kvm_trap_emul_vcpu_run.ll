; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_vcpu_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.kvm_run.0*, %struct.kvm_vcpu.1*)*, i32 }
%struct.kvm_run.0 = type opaque
%struct.kvm_vcpu.1 = type opaque

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_run*, %struct.kvm_vcpu*)* @kvm_trap_emul_vcpu_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_emul_vcpu_run(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.kvm_run*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %3, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @kvm_read_c0_guest_cause(i32 %12)
  %14 = call i32 @kvm_mips_deliver_interrupts(%struct.kvm_vcpu* %8, i32 %13)
  %15 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = call i32 @kvm_trap_emul_vcpu_reenter(%struct.kvm_run* %15, %struct.kvm_vcpu* %16)
  %18 = call i32 (...) @pagefault_disable()
  %19 = call i32 (...) @htw_stop()
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @kvm_mips_suspend_mm(i32 %20)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.kvm_run.0*, %struct.kvm_vcpu.1*)*, i32 (%struct.kvm_run.0*, %struct.kvm_vcpu.1*)** %24, align 8
  %26 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %27 = bitcast %struct.kvm_run* %26 to %struct.kvm_run.0*
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = bitcast %struct.kvm_vcpu* %28 to %struct.kvm_vcpu.1*
  %30 = call i32 %25(%struct.kvm_run.0* %27, %struct.kvm_vcpu.1* %29)
  store i32 %30, i32* %6, align 4
  %31 = call i32 (...) @smp_processor_id()
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @check_switch_mmu_context(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @kvm_mips_resume_mm(i32 %36)
  %38 = call i32 (...) @htw_start()
  %39 = call i32 (...) @pagefault_enable()
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @kvm_mips_deliver_interrupts(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_c0_guest_cause(i32) #1

declare dso_local i32 @kvm_trap_emul_vcpu_reenter(%struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @htw_stop(...) #1

declare dso_local i32 @kvm_mips_suspend_mm(i32) #1

declare dso_local i32 @check_switch_mmu_context(i32) #1

declare dso_local i32 @kvm_mips_resume_mm(i32) #1

declare dso_local i32 @htw_start(...) #1

declare dso_local i32 @pagefault_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
