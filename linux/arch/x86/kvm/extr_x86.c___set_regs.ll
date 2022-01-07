; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___set_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@X86_EFLAGS_FIXED = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_regs*)* @__set_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %12, i32 0, i32 17
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kvm_rax_write(%struct.kvm_vcpu* %11, i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kvm_rbx_write(%struct.kvm_vcpu* %16, i32 %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kvm_rcx_write(%struct.kvm_vcpu* %21, i32 %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kvm_rdx_write(%struct.kvm_vcpu* %26, i32 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kvm_rsi_write(%struct.kvm_vcpu* %31, i32 %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kvm_rdi_write(%struct.kvm_vcpu* %36, i32 %39)
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kvm_rsp_write(%struct.kvm_vcpu* %41, i32 %44)
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kvm_rbp_write(%struct.kvm_vcpu* %46, i32 %49)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %51, i32 %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @X86_EFLAGS_FIXED, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @kvm_set_rflags(%struct.kvm_vcpu* %56, i32 %61)
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* @KVM_REQ_EVENT, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = call i32 @kvm_make_request(i32 %67, %struct.kvm_vcpu* %68)
  ret void
}

declare dso_local i32 @kvm_rax_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rbx_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rcx_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rdx_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rsi_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rdi_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rsp_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rbp_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
