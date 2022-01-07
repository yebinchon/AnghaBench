; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_handle_exit.c_kvm_handle_wfx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_handle_exit.c_kvm_handle_wfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_run = type { i32 }

@HSR_WFI_IS_WFE = common dso_local global i32 0, align 4
@KVM_REQ_UNHALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_run*)* @kvm_handle_wfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_handle_wfx(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %5)
  %7 = load i32, i32* @HSR_WFI_IS_WFE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i32* @vcpu_pc(%struct.kvm_vcpu* %11)
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_kvm_wfx(i32 %13, i32 1)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @vcpu_mode_priv(%struct.kvm_vcpu* %21)
  %23 = call i32 @kvm_vcpu_on_spin(%struct.kvm_vcpu* %20, i32 %22)
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i32* @vcpu_pc(%struct.kvm_vcpu* %25)
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @trace_kvm_wfx(i32 %27, i32 0)
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @kvm_vcpu_block(%struct.kvm_vcpu* %34)
  %36 = load i32, i32* @KVM_REQ_UNHALT, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = call i32 @kvm_clear_request(i32 %36, %struct.kvm_vcpu* %37)
  br label %39

39:                                               ; preds = %24, %10
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = call i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu* %41)
  %43 = call i32 @kvm_skip_instr(%struct.kvm_vcpu* %40, i32 %42)
  ret i32 1
}

declare dso_local i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_wfx(i32, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_on_spin(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_mode_priv(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_block(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_clear_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_skip_instr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
