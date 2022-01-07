; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_constant_host_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_constant_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@X86_CR0_TS = common dso_local global i64 0, align 8
@HOST_CR0 = common dso_local global i32 0, align 4
@HOST_CR3 = common dso_local global i32 0, align 4
@HOST_CR4 = common dso_local global i32 0, align 4
@HOST_CS_SELECTOR = common dso_local global i32 0, align 4
@__KERNEL_CS = common dso_local global i32 0, align 4
@HOST_DS_SELECTOR = common dso_local global i32 0, align 4
@__KERNEL_DS = common dso_local global i32 0, align 4
@HOST_ES_SELECTOR = common dso_local global i32 0, align 4
@HOST_SS_SELECTOR = common dso_local global i32 0, align 4
@HOST_TR_SELECTOR = common dso_local global i32 0, align 4
@GDT_ENTRY_TSS = common dso_local global i32 0, align 4
@HOST_IDTR_BASE = common dso_local global i32 0, align 4
@host_idt_base = common dso_local global i64 0, align 8
@HOST_RIP = common dso_local global i32 0, align 4
@vmx_vmexit = common dso_local global i64 0, align 8
@MSR_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@vmcs_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@VM_EXIT_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@MSR_IA32_CR_PAT = common dso_local global i32 0, align 4
@HOST_IA32_PAT = common dso_local global i32 0, align 4
@HOST_IA32_EFER = common dso_local global i32 0, align 4
@host_efer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_constant_host_state(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %9 = call i64 (...) @read_cr0()
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @X86_CR0_TS, align 8
  %12 = and i64 %10, %11
  %13 = call i32 @WARN_ON(i64 %12)
  %14 = load i32, i32* @HOST_CR0, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @vmcs_writel(i32 %14, i64 %15)
  %17 = call i64 (...) @__read_cr3()
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @HOST_CR3, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @vmcs_writel(i32 %18, i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %21, i64* %26, align 8
  %27 = call i64 (...) @cr4_read_shadow()
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* @HOST_CR4, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @vmcs_writel(i32 %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %33 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 %31, i64* %36, align 8
  %37 = load i32, i32* @HOST_CS_SELECTOR, align 4
  %38 = load i32, i32* @__KERNEL_CS, align 4
  %39 = call i32 @vmcs_write16(i32 %37, i32 %38)
  %40 = load i32, i32* @HOST_DS_SELECTOR, align 4
  %41 = load i32, i32* @__KERNEL_DS, align 4
  %42 = call i32 @vmcs_write16(i32 %40, i32 %41)
  %43 = load i32, i32* @HOST_ES_SELECTOR, align 4
  %44 = load i32, i32* @__KERNEL_DS, align 4
  %45 = call i32 @vmcs_write16(i32 %43, i32 %44)
  %46 = load i32, i32* @HOST_SS_SELECTOR, align 4
  %47 = load i32, i32* @__KERNEL_DS, align 4
  %48 = call i32 @vmcs_write16(i32 %46, i32 %47)
  %49 = load i32, i32* @HOST_TR_SELECTOR, align 4
  %50 = load i32, i32* @GDT_ENTRY_TSS, align 4
  %51 = mul nsw i32 %50, 8
  %52 = call i32 @vmcs_write16(i32 %49, i32 %51)
  %53 = load i32, i32* @HOST_IDTR_BASE, align 4
  %54 = load i64, i64* @host_idt_base, align 8
  %55 = call i32 @vmcs_writel(i32 %53, i64 %54)
  %56 = load i32, i32* @HOST_RIP, align 4
  %57 = load i64, i64* @vmx_vmexit, align 8
  %58 = call i32 @vmcs_writel(i32 %56, i64 %57)
  %59 = load i32, i32* @MSR_IA32_SYSENTER_CS, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @rdmsr(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @HOST_IA32_SYSENTER_CS, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @vmcs_write32(i32 %63, i32 %64)
  %66 = load i32, i32* @MSR_IA32_SYSENTER_EIP, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @rdmsrl(i32 %66, i64 %67)
  %69 = load i32, i32* @HOST_IA32_SYSENTER_EIP, align 4
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @vmcs_writel(i32 %69, i64 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmcs_config, i32 0, i32 0), align 4
  %73 = load i32, i32* @VM_EXIT_LOAD_IA32_PAT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %1
  %77 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @rdmsr(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @HOST_IA32_PAT, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = shl i32 %83, 32
  %85 = or i32 %82, %84
  %86 = call i32 @vmcs_write64(i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %76, %1
  %88 = call i64 (...) @cpu_has_load_ia32_efer()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @HOST_IA32_EFER, align 4
  %92 = load i32, i32* @host_efer, align 4
  %93 = call i32 @vmcs_write64(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  ret void
}

declare dso_local i64 @read_cr0(...) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

declare dso_local i64 @__read_cr3(...) #1

declare dso_local i64 @cr4_read_shadow(...) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i64 @cpu_has_load_ia32_efer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
