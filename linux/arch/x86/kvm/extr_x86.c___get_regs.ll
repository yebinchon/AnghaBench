; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_regs*)* @__get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @emulator_writeback_register_cache(i32* %13)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call i32 @kvm_rax_read(%struct.kvm_vcpu* %19)
  %21 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %21, i32 0, i32 17
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i32 @kvm_rbx_read(%struct.kvm_vcpu* %23)
  %25 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = call i32 @kvm_rcx_read(%struct.kvm_vcpu* %27)
  %29 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @kvm_rdx_read(%struct.kvm_vcpu* %31)
  %33 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %33, i32 0, i32 14
  store i32 %32, i32* %34, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i32 @kvm_rsi_read(%struct.kvm_vcpu* %35)
  %37 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i32 @kvm_rdi_read(%struct.kvm_vcpu* %39)
  %41 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @kvm_rsp_read(%struct.kvm_vcpu* %43)
  %45 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = call i32 @kvm_rbp_read(%struct.kvm_vcpu* %47)
  %49 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %51)
  %53 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i32 @kvm_get_rflags(%struct.kvm_vcpu* %55)
  %57 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local i32 @emulator_writeback_register_cache(i32*) #1

declare dso_local i32 @kvm_rax_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rbx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rcx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rdx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rsi_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rdi_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rsp_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rbp_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_rflags(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
